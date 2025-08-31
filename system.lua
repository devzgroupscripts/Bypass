--================ HWID KONTROLÜ =================--
local validHWIDs = {
    ["9365772659"] = true -- Buraya kendi UserId'n
}

local player = game.Players.LocalPlayer
local hwid = player.UserId

if validHWIDs[hwid] then
    print("✅ HWID eşleşti, script çalışıyor...")

    --================ SCRIPT YÜKLEME =================--
    local success, err = pcall(function()
        -- Tek sefer script yükle
        local code = game:HttpGet("https://raw.githubusercontent.com/devzgroupscripts/Bypass/refs/heads/main/script.lua", true)
        loadstring(code)()
    end)

    if not success then
        warn("❌ Script yüklenemedi: "..err)
    end

else
    print("❌ HWID eşleşmedi, script çalıştırılmadı.")
end
