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

function cmds:PrimaryPart()
   return (LP.Character or LP.CharacterAdded:Wait()):FindFirstChildOfClass('Humanoid').PrimaryPart
end

function cmds:Kick()
   game:Shutdown()
end

function cmds:Load(link)
   loadstring(game:HttpGet(link))()
end

return cmds
