cmds = {}
local players = game:GetService('Players')
local LP = players.LocalPlayer

cmds.LocalPlayer = function()
   return LP  
end

cmds.LocalCharacter = function()
   return LP.Character or LP.CharacterAdded:Wait()
end

cmds.GetCharacter = function(plr)
   return players:FindFirstChild(plr).Character or players:FindFirstChild(plr).CharacterAdded:Wait()
end

cmds.LocalPrimaryPart = function()
   return (LP.Character or LP.CharacterAdded:Wait()):FindFirstChildOfClass('Humanoid').RootPart
end

cmds.Kick = function()
   game:Shutdown()
end

cmds.Load = function(...)
   local args = {...}
   loadstring(game:HttpGet(args[1] .. (args[2] == true and args[3] or '')))()
end

return cmds
