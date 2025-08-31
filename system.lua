local validHWIDs = {
    [9356628060] = true,
    [9365772659] = true
}

local player = game.Players.LocalPlayer
local hwid = player.UserId  -- number olarak bırakıyoruz

if validHWIDs[hwid] then
    print("✅ HWID eşleşti, script çalışıyor...")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/devzgroupscripts/Bypass/refs/heads/main/script.lua", true))()
else
    print("❌ HWID eşleşmedi, script çalıştırılmadı.")
end
