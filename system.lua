local validHWIDs = {
    [9356628060] = true,
    [9365772659] = true
}

local player = game.Players.LocalPlayer
local hwid = player.UserId

if validHWIDs[hwid] then
    print("✅ HWID eşleşti, script çalışacak...")
    
    -- Scripti yükle ve çalıştır
    local success, err = pcall(function()
        local code = game:HttpGet("https://raw.githubusercontent.com/devzgroupscripts/Bypass/refs/heads/main/system.lua", true)
        loadstring(code)()
    end)
    
    if not success then
        warn("Script yüklenemedi: "..err)
    end
else
    print("❌ HWID eşleşmedi.")
end
