--// ANTI-KICK
local mt = getrawmetatable(game)
local ncallsa = mt.__namecall
	setreadonly(mt, false)
	mt.__namecall = newcclosure(function(...)
		local args = {...}
		if not checkcaller() and getnamecallmethod() == "Kick" then
			return nil
		end
		return ncallsa(...)
	end)
	setreadonly(mt, true)
--//
	
--// ANTI-BAN
	local mmt = getrawmetatable(game)

local oldnamecall = mmt.__namecall

setreadonly(mmt, false)

mmt.__namecall = newcclosure(function(self, ...)
   local method = tostring(getnamecallmethod())
   local Args = {...}
   if not checkcaller() and method == "FireServer" and tostring(self) == "Banned" then
       return nil
   end
   
   return oldnamecall(self, ...)
end)

setreadonly(mmt, true)
	
	local gmt = getrawmetatable(game);
setreadonly(gmt, false);
local old_index = gmt.__index;
gmt.__index = function(a, b)
    if tostring(a) == "BannedA" or tostring(a) == "BannedB" or tostring(a) == "BannedC" or tostring(a) == "BannedD" then
        if tostring(b) == "Value" then
            return false;
        end
    end
    return old_index(a, b);
end

local bgmt = getrawmetatable(game);
setreadonly(bgmt, false);
local bold_index = bgmt.__index;
bgmt.__index = function(a, b)
    if tostring(a) == "BCount" then
        if tostring(b) == "Value" then
            return 0;
        end
    end
    return bold_index(a, b);
end

for i,BN in pairs(game:GetService("Workspace").FE.Settings:GetChildren()) do
    if BN.Name == "BName" then
    BN:Destroy()
end
end
