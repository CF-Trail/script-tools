cmds = {}
local players = game:GetService('Players')
local LP = players.LocalPlayer

function cmds:LocalPlayer()
   return LP
end

function cmds:LocalCharacter()
   return LP.Character or LP.CharacterAdded:Wait()
end

function cmds:GetCharacter(plr)
   return players:FindFirstChild(plr).Character or players:FindFirstChild(plr).CharacterAdded:Wait()
end

function cmds:LocalPrimaryPart()
   return (LP.Character or LP.CharacterAdded:Wait()):FindFirstChildOfClass('Humanoid').PrimaryPart
end

function cmds:Kick()
   game:Shutdown()
end

function cmds:Load(...)
   local args = {...}
   loadstring(game:HttpGet(args[1] .. (args[2] == true and args[3] or '')))()
end

return cmds
