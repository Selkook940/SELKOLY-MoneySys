-- ============================================
-- client.lua  |  Para Sistemi - HTML NUI
-- ============================================
-- Native GTA stat kullanılmıyor (bigint limit aşılırdı)
-- Tüm gösterim HTML NUI üzerinden yapılıyor

local cash = 0
local bank = 0
local HUD_DURATION = 5000

-- =============================================
--  NUI YARDIMCI FONKSİYONLARI
-- =============================================

--- Para değerlerini NUI'ya gönder
local function SendMoneyToNUI()
    SendNUIMessage({
        type  = "updateMoney",
        cash  = cash,
        bank  = bank
    })
end

--- Eski ve yeni bakiyeyi animasyonlu olarak NUI'ya gönder
local function SendMoneyChangeToNUI(prevCash, prevBank, amount, moneyType, duration)
    SendNUIMessage({
        type      = "moneyChange",
        cash      = cash,
        bank      = bank,
        prevCash  = prevCash,
        prevBank  = prevBank,
        amount    = tonumber(amount) or 0,
        moneyType = moneyType,
        duration  = duration or HUD_DURATION
    })
end

--- HUD'u göster (ms cinsinden süre)
local function ShowHUD(duration)
    SendNUIMessage({
        type     = "showHUD",
        cash     = cash,
        bank     = bank,
        duration = duration or 5000
    })
end

--- İşlem bildirimi gönder (+ veya - miktar)
local function ShowTransactionNotify(amount, moneyType)
    amount = tonumber(amount) or 0
    if amount == 0 then return end

    local label = moneyType == "bank" and "banka" or "nakit"
    local isPositive = amount > 0
    local message = ("$%s %s %s."):format(
        tostring(math.abs(amount)),
        label,
        isPositive and "eklendi" or "azaldı"
    )

    TriggerEvent("utk-notify:client:show", {
        type = isPositive and "success" or "warning",
        title = "Para",
        message = message,
        duration = 3500
    })
end

-- =============================================
--  SERVER OLAYLARI
-- =============================================

--- 3 saniyede bir server'dan sync gelen olay
RegisterNetEvent("money:forceSync")
AddEventHandler("money:forceSync", function(c, b)
    local prevCash = cash
    local prevBank = bank
    local nextCash = tonumber(c) or 0
    local nextBank = tonumber(b) or 0

    if nextCash ~= prevCash or nextBank ~= prevBank then
        cash = nextCash
        bank = nextBank
        SendMoneyChangeToNUI(prevCash, prevBank, 0, "sync", HUD_DURATION)
        return
    end

    cash = tonumber(c) or 0
    bank = tonumber(b) or 0
    SendMoneyToNUI()
end)

--- Oyuncu ilk bağlandığında / spawn olduğunda gelen yükleme olayı
RegisterNetEvent("money:load")
AddEventHandler("money:load", function(c, b)
    local prevCash = cash
    local prevBank = bank
    cash = tonumber(c) or 0
    bank = tonumber(b) or 0
    SendMoneyChangeToNUI(prevCash, prevBank, 0, "load", 6000)
end)

--- Nakit güncellendi (AddMoney / RemoveMoney)
RegisterNetEvent("money:updateCash")
AddEventHandler("money:updateCash", function(amount)
    local prevCash = cash
    local prevBank = bank
    cash = cash + (tonumber(amount) or 0)
    SendMoneyChangeToNUI(prevCash, prevBank, amount, "cash", HUD_DURATION)
    ShowTransactionNotify(amount, "cash")
end)

--- Banka güncellendi (AddMoney / RemoveMoney)
RegisterNetEvent("money:updateBank")
AddEventHandler("money:updateBank", function(amount)
    local prevCash = cash
    local prevBank = bank
    bank = bank + (tonumber(amount) or 0)
    SendMoneyChangeToNUI(prevCash, prevBank, amount, "bank", HUD_DURATION)
    ShowTransactionNotify(amount, "bank")
end)

-- =============================================
--  3 SANİYEDE BİR SQL SYNC
-- =============================================
CreateThread(function()
    while true do
        Wait(3000)
        TriggerServerEvent("money:requestSync")
    end
end)

-- =============================================
--  ALT TUŞU → HUD GÖSTERİMİ
-- =============================================
CreateThread(function()
    local pressing = false
    while true do
        Wait(0)
        if IsControlPressed(0, 19) then   -- 19 = INPUT_FRONTEND_DOWN (ALT)
            if not pressing then
                pressing = true
                ShowHUD(5000)
            end
        else
            pressing = false
        end
    end
end)

-- =============================================
--  PARA SOR (diğer clientside scriptler için)
-- =============================================
--- Kullanım: exports["para_sistemi"]:GetCash()  /  GetBank()
exports("GetCash", function() return cash end)
exports("GetBank", function() return bank end)
