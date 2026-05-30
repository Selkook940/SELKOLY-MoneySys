/* ============================================
   PARA HUD - SCRIPT.JS
   NUI ↔ Lua köprüsü
   ============================================ */

"use strict";

// ---- State ----
let hudVisible    = false;
let hudTimer      = null;
let notifTimer    = null;
let progReset     = null;
let displayedCash = 0;
let displayedBank = 0;
let cashAnim      = null;
let bankAnim      = null;
let audioCtx      = null;
let soundTimers   = { cash: [], bank: [] };

const MAX_TICKS_PER_CHANGE = 6;
const tickProfiles = {
    cashGain: { type: "triangle", start: 1080, end: 1450, duration: 0.04, volume: 0.018 },
    cashLoss: { type: "square", start: 290, end: 190, duration: 0.035, volume: 0.014 },
    bankGain: { type: "sine", start: 680, end: 960, duration: 0.055, volume: 0.016 },
    bankLoss: { type: "sawtooth", start: 235, end: 150, duration: 0.045, volume: 0.012 }
};

const moneyHud    = document.getElementById("money-hud");
const bankEl      = document.getElementById("bank-value");
const cashEl      = document.getElementById("cash-value");
const bankCard    = document.getElementById("bank-card");
const cashCard    = document.getElementById("cash-card");

const notifBox    = document.getElementById("notif-box");
const notifDir    = document.getElementById("notif-dir");
const notifAmt    = document.getElementById("notif-amount");
const notifLbl    = document.getElementById("notif-label");
const notifProg   = document.getElementById("notif-progress");

// ---- Yardımcılar ----

/**
 * Sayıyı dolar formatına çevirir: 1234567 → $1,234,567
 */
function fmt(n) {
    const num = Number(n) || 0;
    return "$" + num.toLocaleString("en-US");
}

function easeOutCubic(t) {
    return 1 - Math.pow(1 - t, 3);
}

function getAudioContext() {
    if (!audioCtx) {
        const AudioCtor = window.AudioContext || window.webkitAudioContext;
        if (!AudioCtor) return null;
        audioCtx = new AudioCtor();
    }

    if (audioCtx.state === "suspended") {
        audioCtx.resume();
    }

    return audioCtx;
}

function playMoneyTick(key, direction) {
    const ctx = getAudioContext();
    if (!ctx) return;

    const profileKey = key + (direction > 0 ? "Gain" : "Loss");
    const profile = tickProfiles[profileKey];
    if (!profile) return;

    const now = ctx.currentTime;
    const osc = ctx.createOscillator();
    const gain = ctx.createGain();
    const filter = ctx.createBiquadFilter();

    filter.type = "lowpass";
    filter.frequency.setValueAtTime(direction > 0 ? 4200 : 1200, now);

    osc.type = profile.type;
    osc.frequency.setValueAtTime(profile.start, now);
    osc.frequency.exponentialRampToValueAtTime(profile.end, now + profile.duration);

    gain.gain.setValueAtTime(0.0001, now);
    gain.gain.exponentialRampToValueAtTime(profile.volume, now + 0.006);
    gain.gain.exponentialRampToValueAtTime(0.0001, now + profile.duration);

    osc.connect(filter);
    filter.connect(gain);
    gain.connect(ctx.destination);

    osc.start(now);
    osc.stop(now + profile.duration + 0.01);
}

function getTickCount(amount) {
    amount = Math.abs(Number(amount) || 0);
    if (amount <= 0) return 0;
    if (amount <= 5) return 2;
    if (amount <= 25) return 3;
    if (amount <= 100) return 4;
    if (amount <= 500) return 5;
    return MAX_TICKS_PER_CHANGE;
}

function clearSoundTimers(key) {
    const timers = soundTimers[key] || [];
    timers.forEach(clearTimeout);
    soundTimers[key] = [];
}

function playMoneyTickSequence(key, direction, amount, duration) {
    clearSoundTimers(key);

    const tickCount = Math.min(MAX_TICKS_PER_CHANGE, getTickCount(amount));
    if (tickCount <= 0) return;

    const spacing = Math.min(120, Math.max(55, duration / (tickCount + 2)));

    for (let i = 0; i < tickCount; i++) {
        const delay = i * spacing;
        const timer = setTimeout(function () {
            playMoneyTick(key, direction);
        }, delay);
        soundTimers[key].push(timer);
    }
}

/**
 * HUD'u göster (duration ms sonra otomatik gizle, 0 = sürekli göster)
 */
function showHUD(duration) {
    duration = (duration === undefined) ? 5000 : duration;
    moneyHud.classList.add("visible");
    hudVisible = true;

    if (hudTimer) clearTimeout(hudTimer);
    if (duration > 0) {
        hudTimer = setTimeout(function () {
            moneyHud.classList.remove("visible");
            hudVisible = false;
            hudTimer = null;
        }, duration);
    }
}

/**
 * HUD'u hemen gizle
 */
function hideHUD() {
    if (hudTimer) clearTimeout(hudTimer);
    moneyHud.classList.remove("visible");
    hudVisible = false;
    hudTimer = null;
}

/**
 * Para değerlerini NUI elementlerine yaz + gerekirse eski değerden yeni değere saydır
 */
function updateMoney(cash, bank, opts) {
    opts = opts || {};

    const nextCash = Number(cash) || 0;
    const nextBank = Number(bank) || 0;
    const fromCash = Number(opts.prevCash !== undefined ? opts.prevCash : displayedCash) || 0;
    const fromBank = Number(opts.prevBank !== undefined ? opts.prevBank : displayedBank) || 0;
    const animate = opts.animate === true;

    updateMoneyLine({
        el: cashEl,
        card: cashCard,
        from: fromCash,
        to: nextCash,
        animate,
        key: "cash"
    });

    updateMoneyLine({
        el: bankEl,
        card: bankCard,
        from: fromBank,
        to: nextBank,
        animate,
        key: "bank"
    });
}

function updateMoneyLine(config) {
    const changed = config.from !== config.to || config.el.textContent !== fmt(config.to);

    if (!changed) {
        config.el.textContent = fmt(config.to);
        setDisplayedValue(config.key, config.to);
        return;
    }

    if (config.animate) {
        animateMoneyValue(config);
    } else {
        cancelMoneyAnim(config.key);
        config.el.textContent = fmt(config.to);
        setDisplayedValue(config.key, config.to);
        triggerFlash(config.el, config.card, config.to - config.from);
    }
}

function animateMoneyValue(config) {
    cancelMoneyAnim(config.key);

    const start = performance.now();
    const duration = Math.min(1200, Math.max(550, Math.abs(config.to - config.from) / 12));
    const diff = config.to - config.from;
    const direction = diff >= 0 ? 1 : -1;

    config.card.classList.remove("gain", "loss");
    config.card.classList.add("counting", diff >= 0 ? "gain" : "loss");
    playMoneyTickSequence(config.key, direction, Math.abs(diff), duration);

    function tick(now) {
        const progress = Math.min(1, (now - start) / duration);
        const value = Math.round(config.from + diff * easeOutCubic(progress));

        config.el.textContent = fmt(value);
        setDisplayedValue(config.key, value);

        if (progress < 1) {
            setAnimFrame(config.key, requestAnimationFrame(tick));
        } else {
            config.el.textContent = fmt(config.to);
            setDisplayedValue(config.key, config.to);
            clearAnimFrame(config.key);
            triggerFlash(config.el, config.card, diff);
        }
    }

    setAnimFrame(config.key, requestAnimationFrame(tick));
}

function setDisplayedValue(key, value) {
    if (key === "cash") displayedCash = value;
    if (key === "bank") displayedBank = value;
}

function setAnimFrame(key, frame) {
    if (key === "cash") cashAnim = frame;
    if (key === "bank") bankAnim = frame;
}

function clearAnimFrame(key) {
    if (key === "cash") cashAnim = null;
    if (key === "bank") bankAnim = null;
}

function cancelMoneyAnim(key) {
    const frame = key === "cash" ? cashAnim : bankAnim;
    if (frame) cancelAnimationFrame(frame);
    clearSoundTimers(key);
    clearAnimFrame(key);
}

function triggerFlash(el, card, diff) {
    el.classList.remove("updated");
    card.classList.remove("counting", "gain", "loss");
    void el.offsetWidth; // reflow
    el.classList.add("updated");

    if (diff !== 0) {
        card.classList.add(diff > 0 ? "gain" : "loss");
        setTimeout(function () {
            card.classList.remove("gain", "loss");
        }, 900);
    }
}

/**
 * Alt bildirim göster
 * @param {number}  amount    - pozitif = kazanç, negatif = kayıp
 * @param {string}  type      - "cash" | "bank"
 */
function showNotif(amount, type) {
    const isPositive = amount >= 0;
    const absAmt     = Math.abs(amount);
    const label      = type === "bank" ? "Banka" : "Nakit";

    // İçerik
    notifDir.textContent = isPositive ? "+" : "−";
    notifAmt.textContent  = fmt(absAmt);
    notifLbl.textContent  = label;

    // Renk sınıfı
    notifBox.classList.remove("positive", "negative", "show");
    notifBox.classList.add(isPositive ? "positive" : "negative");

    // Progress bar sıfırla
    if (progReset) clearTimeout(progReset);
    notifProg.classList.remove("running");
    void notifProg.offsetWidth;

    // Göster
    requestAnimationFrame(function () {
        notifBox.classList.add("show");
        notifProg.classList.add("running");
    });

    // Gizle
    if (notifTimer) clearTimeout(notifTimer);
    notifTimer = setTimeout(function () {
        notifBox.classList.remove("show");
        notifTimer = null;
    }, 4000);
}

// ============================================
//   NUI MESAJ DİNLEYİCİSİ (Lua ↔ JS köprüsü)
// ============================================

window.addEventListener("message", function (event) {
    const data = event.data;
    if (!data || !data.type) return;

    switch (data.type) {

        // Para değerlerini güncelle (3 saniyelik sync)
        case "updateMoney":
            updateMoney(data.cash, data.bank);
            break;

        // Para değişimini animasyonla göster
        case "moneyChange":
            updateMoney(data.cash, data.bank, {
                animate: true,
                prevCash: data.prevCash,
                prevBank: data.prevBank
            });
            showHUD(data.duration !== undefined ? data.duration : 5000);
            break;

        // HUD göster (ALT tuşu veya işlem sonrası)
        case "showHUD":
            updateMoney(data.cash, data.bank);
            showHUD(data.duration !== undefined ? data.duration : 5000);
            break;

        // HUD'u manuel gizle
        case "hideHUD":
            hideHUD();
            break;

        // İşlem bildirimi + HUD aç
        case "transaction":
            if (!hudVisible) showHUD(5000);
            break;

        // Sürekli göster (örn. araç içi, menu açık)
        case "persistHUD":
            if (data.visible) {
                showHUD(0);
            } else {
                hideHUD();
            }
            break;
    }
});
