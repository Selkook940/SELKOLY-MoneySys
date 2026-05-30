-- ============================================
-- server.lua  |  Para Sistemi
-- ============================================
-- Yetki sistemi: `yetkililer` tablosu (DB)
--   yetki_seviyesi: 1=staff | 2=admin | 3=founder
--   Komutlar için minimum seviye: 2 (admin+)
-- ============================================

-- =============================================
--  YETKİ SABİTİ
--  Bu değeri değiştirerek minimum seviyeyi ayarla
-- =============================================
local MIN_YETKI = 2   -- 2 = admin ve üstü (founder dahil)

-- =============================================
--  YARDIMCI FONKSİYONLAR
-- =============================================

--- Oyuncunun steam hex'ini döndür
local function GetSteamHex(src)
    for _, id in pairs(GetPlayerIdentifiers(src)) do
        if id:sub(1, 6) == "steam:" then
            return id
        end
    end
    return nil
end

--- Oyuncunun license identifier'ını döndür
local function GetLicense(src)
    for _, id in pairs(GetPlayerIdentifiers(src)) do
        if id:sub(1, 8) == "license:" then
            return id
        end
    end
    return nil
end

--- Konsola renkli log yaz
local function Log(msg)
    print("^3[PARA]^7 " .. tostring(msg))
end

--- oxmysql execute callback sonucu sürüme göre sayı veya tablo dönebilir
local function GetAffectedRows(result)
    if type(result) == "number" then
        return result
    end

    if type(result) == "table" then
        return tonumber(result.affectedRows)
            or tonumber(result.changedRows)
            or tonumber(result.rowsAffected)
            or tonumber(result.affected)
            or 0
    end

    return 0
end

--- Oyuncuya utk-notify ile bilgi ver, konsoldan çalışırsa konsola yaz
local function Notify(src, notifyType, title, message, duration)
    message = tostring(message or "")

    if src == 0 then
        print("[PARA] " .. message)
        return
    end

    TriggerClientEvent("utk-notify:client:show", src, {
        type = notifyType or "success",
        title = title or "Para",
        message = message,
        duration = duration or 3500
    })
end

--- Sütun adını doğrula (SQL injection engeli)
local function ValidateColumn(moneyType)
    if moneyType == "bank" then return "bank"
    else return "cash" end
end

--- DB'den yetki seviyesini çek (sync)
--- Döner: number (seviye) veya 0 (yetkisiz/bulunamadı)
local function GetYetkiSeviyesi(src)
    local license = GetLicense(src)
    if not license then return 0 end

    local result = exports.oxmysql:singleSync(
        "SELECT yetki_seviyesi FROM yetkililer WHERE identifier = ? LIMIT 1",
        { license }
    )

    if result and result.yetki_seviyesi then
        return tonumber(result.yetki_seviyesi) or 0
    end
    return 0
end

--- Oyuncunun yeterli yetkiye sahip olup olmadığını kontrol et
--- isConsole = true → her zaman izin ver (sunucu konsolu)
local function HasYetki(src)
    if src == 0 then return true end  -- konsol
    return GetYetkiSeviyesi(src) >= MIN_YETKI
end

--- Yetkisiz oyuncuya hata mesajı gönder
local function SendNoPermMsg(src)
    Notify(src, "error", "Para", "Bu komutu kullanmak için yetkiniz yok! (Admin veya Founder gerekli)", 3500)
end

-- =============================================
--  EXPORT: AddMoney
--  Diğer server scriptlerinden çağrılır:
--    exports["para_sistemi"]:AddMoney(playerId, 5000, "cash")
--    exports["para_sistemi"]:AddMoney(playerId, 10000, "bank")
-- =============================================
exports("AddMoney", function(src, amount, moneyType)
    moneyType = moneyType or "cash"
    amount    = tonumber(amount)

    if not amount or amount <= 0 then
        Log("AddMoney HATA: Geçersiz miktar | src=" .. tostring(src))
        return false
    end

    if not GetPlayerName(src) then
        Log("AddMoney HATA: Oyuncu bulunamadı | src=" .. tostring(src))
        return false
    end

    local steam = GetSteamHex(src)
    if not steam then
        Log("AddMoney HATA: Steam bulunamadı | src=" .. tostring(src))
        return false
    end

    local column    = ValidateColumn(moneyType)
    local eventName = column == "bank" and "money:updateBank" or "money:updateCash"

    exports.oxmysql:execute(
        "UPDATE player_money SET " .. column .. " = " .. column .. " + ? WHERE steam_hex = ?",
        { amount, steam },
        function(rows)
            if GetAffectedRows(rows) > 0 then
                TriggerClientEvent(eventName, src, amount)
                Log("+" .. amount .. " " .. column .. " → " .. steam .. " (#" .. src .. ")")
            else
                Log("AddMoney UYARI: Kayıt güncellenemedi | " .. steam)
            end
        end
    )

    return true
end)

-- =============================================
--  EXPORT: RemoveMoney
--    exports["para_sistemi"]:RemoveMoney(playerId, 500, "cash")
-- =============================================
exports("RemoveMoney", function(src, amount, moneyType)
    moneyType = moneyType or "cash"
    amount    = tonumber(amount)

    if not amount or amount <= 0 then
        Log("RemoveMoney HATA: Geçersiz miktar | src=" .. tostring(src))
        return false
    end

    if not GetPlayerName(src) then
        Log("RemoveMoney HATA: Oyuncu bulunamadı | src=" .. tostring(src))
        return false
    end

    local steam = GetSteamHex(src)
    if not steam then
        Log("RemoveMoney HATA: Steam bulunamadı | src=" .. tostring(src))
        return false
    end

    local column    = ValidateColumn(moneyType)
    local eventName = column == "bank" and "money:updateBank" or "money:updateCash"

    -- Önce bakiyeyi kontrol et
    local result = exports.oxmysql:singleSync(
        "SELECT " .. column .. " FROM player_money WHERE steam_hex = ?",
        { steam }
    )

    if not result then
        Log("RemoveMoney HATA: Oyuncu DB'de yok | " .. steam)
        return false
    end

    local current = tonumber(result[column]) or 0
    if current < amount then
        Log("RemoveMoney: Yetersiz bakiye | " .. steam .. " → " .. current .. " < " .. amount)
        return false
    end

    exports.oxmysql:execute(
        "UPDATE player_money SET " .. column .. " = " .. column .. " - ? WHERE steam_hex = ?",
        { amount, steam },
        function(rows)
            if GetAffectedRows(rows) > 0 then
                TriggerClientEvent(eventName, src, -amount)
                Log("-" .. amount .. " " .. column .. " → " .. steam .. " (#" .. src .. ")")
            end
        end
    )

    return true
end)

-- =============================================
--  EXPORT: GetMoney
--    local money = exports["para_sistemi"]:GetMoney(playerId)
--    print(money.cash, money.bank)
-- =============================================
exports("GetMoney", function(src)
    local steam = GetSteamHex(src)
    if not steam then return nil end

    return exports.oxmysql:singleSync(
        "SELECT cash, bank FROM player_money WHERE steam_hex = ?",
        { steam }
    )
end)

-- =============================================
--  EXPORT: HasMoney (bakiye kontrol)
--    if exports["para_sistemi"]:HasMoney(src, 1000, "cash") then ...
-- =============================================
exports("HasMoney", function(src, amount, moneyType)
    moneyType = moneyType or "cash"
    amount    = tonumber(amount) or 0

    local steam = GetSteamHex(src)
    if not steam then return false end

    local column = ValidateColumn(moneyType)
    local result = exports.oxmysql:singleSync(
        "SELECT " .. column .. " FROM player_money WHERE steam_hex = ?",
        { steam }
    )
    if not result then return false end
    return (tonumber(result[column]) or 0) >= amount
end)

-- =============================================
--  SYNC OLAYI (3 saniyede bir client'tan gelir)
-- =============================================
RegisterNetEvent("money:requestSync")
AddEventHandler("money:requestSync", function()
    local src   = source
    local steam = GetSteamHex(src)
    if not steam then return end

    local result = exports.oxmysql:singleSync(
        "SELECT cash, bank FROM player_money WHERE steam_hex = ?",
        { steam }
    )

    if result then
        TriggerClientEvent("money:forceSync", src, result.cash, result.bank)
    end
end)

-- =============================================
--  OYUNCU GİRİŞİ: Para yükleme
--  Kayıt yoksa otomatik oluştur
-- =============================================
AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)
    local src = source
    deferrals.defer()
    Citizen.Wait(100)

    local steam
    for _, id in pairs(GetPlayerIdentifiers(src)) do
        if id:sub(1, 6) == "steam:" then steam = id break end
    end

    if not steam then
        deferrals.done()
        return
    end

    local result = exports.oxmysql:singleSync(
        "SELECT steam_hex FROM player_money WHERE steam_hex = ?",
        { steam }
    )

    if not result then
        exports.oxmysql:execute(
            "INSERT INTO player_money (steam_hex, cash, bank) VALUES (?, ?, ?)",
            { steam, 5000, 0 }
        )
        Log("Yeni oyuncu kaydı oluşturuldu: " .. steam)
    end

    deferrals.done()
end)

-- Resource restart olduğunda bağlı oyuncuları sync et
AddEventHandler("onServerResourceStart", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end

    for _, playerId in ipairs(GetPlayers()) do
        local src   = tonumber(playerId)
        local steam = GetSteamHex(src)
        if steam then
            local result = exports.oxmysql:singleSync(
                "SELECT cash, bank FROM player_money WHERE steam_hex = ?",
                { steam }
            )
            if result then
                TriggerClientEvent("money:load", src, result.cash, result.bank)
            end
        end
    end
end)

-- =============================================
--  ADMİN KOMUTLARI
--  Yetki: yetkililer tablosunda yetki_seviyesi >= 2
--  (admin = 2, founder = 3 — staff = 1 kullanamaz)
-- =============================================

--- /addmoney [id] [miktar] [cash/bank]
RegisterCommand("addmoney", function(source, args)
    local isConsole = (source == 0)

    if not isConsole and not HasYetki(source) then
        SendNoPermMsg(source)
        return
    end

    local targetId = tonumber(args[1])
    local amount   = tonumber(args[2])
    local mType    = args[3] or "cash"

    if not targetId or not amount or amount <= 0 then
        local usage = "Kullanım: /addmoney [oyuncuID] [miktar] [cash/bank]"
        Notify(source, "warning", "Para", usage, 3500)
        return
    end

    if not GetPlayerName(targetId) then
        Log("addmoney: Oyuncu bulunamadı #" .. tostring(targetId))
        return
    end

    local success = exports[GetCurrentResourceName()]:AddMoney(targetId, amount, mType)
    if success then
        local adminName = isConsole and "CONSOLE" or GetPlayerName(source)
        Log("'" .. adminName .. "' → #" .. targetId .. " +" .. amount .. " " .. mType)

        -- Admin'e de bilgi ver
        if not isConsole then
            Notify(source, "success", "Para", "#" .. targetId .. " " .. GetPlayerName(targetId) .. " -> +" .. amount .. " " .. mType, 3500)
        end
    end
end, false)

--- /removemoney [id] [miktar] [cash/bank]
RegisterCommand("removemoney", function(source, args)
    local isConsole = (source == 0)

    if not isConsole and not HasYetki(source) then
        SendNoPermMsg(source)
        return
    end

    local targetId = tonumber(args[1])
    local amount   = tonumber(args[2])
    local mType    = args[3] or "cash"

    if not targetId or not amount or amount <= 0 then
        local usage = "Kullanım: /removemoney [oyuncuID] [miktar] [cash/bank]"
        Notify(source, "warning", "Para", usage, 3500)
        return
    end

    if not GetPlayerName(targetId) then
        Log("removemoney: Oyuncu bulunamadı #" .. tostring(targetId))
        return
    end

    local success = exports[GetCurrentResourceName()]:RemoveMoney(targetId, amount, mType)
    if success then
        local adminName = isConsole and "CONSOLE" or GetPlayerName(source)
        Log("'" .. adminName .. "' → #" .. targetId .. " -" .. amount .. " " .. mType)

        if not isConsole then
            Notify(source, "warning", "Para", "#" .. targetId .. " " .. GetPlayerName(targetId) .. " -> -" .. amount .. " " .. mType, 3500)
        end
    else
        local msg = "İşlem başarısız: yetersiz bakiye veya oyuncu bulunamadı."
        Notify(source, "error", "Para", msg, 3500)
    end
end, false)

--- /setmoney [id] [miktar] [cash/bank]
RegisterCommand("setmoney", function(source, args)
    local isConsole = (source == 0)

    if not isConsole and not HasYetki(source) then
        SendNoPermMsg(source)
        return
    end

    local targetId = tonumber(args[1])
    local amount   = tonumber(args[2])
    local mType    = args[3] or "cash"

    if not targetId or amount == nil or amount < 0 then
        local usage = "Kullanım: /setmoney [oyuncuID] [miktar] [cash/bank]"
        Notify(source, "warning", "Para", usage, 3500)
        return
    end

    if not GetPlayerName(targetId) then return end

    local steam  = GetSteamHex(targetId)
    if not steam then return end

    local column    = ValidateColumn(mType)
    local eventName = column == "bank" and "money:updateBank" or "money:updateCash"

    local result  = exports.oxmysql:singleSync(
        "SELECT " .. column .. " FROM player_money WHERE steam_hex = ?",
        { steam }
    )
    local current = result and (tonumber(result[column]) or 0) or 0
    local diff    = amount - current

    exports.oxmysql:execute(
        "UPDATE player_money SET " .. column .. " = ? WHERE steam_hex = ?",
        { amount, steam },
        function(rows)
            if GetAffectedRows(rows) > 0 then
                TriggerClientEvent(eventName, targetId, diff)
                local adminName = isConsole and "CONSOLE" or GetPlayerName(source)
                Log("'" .. adminName .. "' setmoney → #" .. targetId .. " " .. column .. "=" .. amount)

                if not isConsole then
                    Notify(source, "success", "Para", "#" .. targetId .. " " .. GetPlayerName(targetId) .. " -> " .. column .. " = $" .. amount, 3500)
                end
            end
        end
    )
end, false)

--- /parabak [id?]  —  oyuncunun parasını göster (admin+)
RegisterCommand("parabak", function(source, args)
    local isConsole = (source == 0)

    if not isConsole and not HasYetki(source) then
        SendNoPermMsg(source)
        return
    end

    local targetId = tonumber(args[1]) or (not isConsole and source) or nil
    if not targetId or not GetPlayerName(targetId) then
        Log("parabak: Geçerli bir oyuncu ID'si gir")
        return
    end

    local money = exports[GetCurrentResourceName()]:GetMoney(targetId)
    if money then
        local msg = string.format(
            "#%d %s -> Nakit: $%s | Banka: $%s",
            targetId,
            GetPlayerName(targetId),
            tostring(money.cash),
            tostring(money.bank)
        )
        Notify(source, "success", "Para", msg, 4500)
    end
end, false)
