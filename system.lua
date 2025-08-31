-- HWID kontrolü
local validHWIDs = {
    ["9365772659"] = true
}

local player = game.Players.LocalPlayer
local hwid = player.UserId

if validHWIDs[hwid] then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/devzgroupscripts/Bypass/refs/heads/main/script.lua", true))()
else
    
end

local player = game.Players.LocalPlayer
local hwid = player.UserId

if validHWIDs[hwid] then
    print("✅ HWID eşleşti, script çalışıyor...")
    
    -- Burada system.lua URL'sini direkt execute et
    -- Eğer overflow varsa, bu sistem.lua içinde çözülmeli
    loadstring(game:HttpGet("https://raw.githubusercontent.com/devzgroupscripts/Bypass/refs/heads/main/system.lua", true))()
else
    print("❌ HWID eşleşmedi, script çalıştırılmadı.")
end
