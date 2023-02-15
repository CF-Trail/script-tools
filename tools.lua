cmds = {}
repeat task.wait() until game:GetService('Players').LocalPlayer
local players = game:GetService('Players')
local LP = players.LocalPlayer
local httprequest = (syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request

function cmds.LocalPlayer()
   return LP
end

function cmds.LocalCharacter()
   return LP.Character or LP.CharacterAdded:Wait()
end

function cmds.GetCharacter(plr)
   return players:FindFirstChild(plr).Character or players:FindFirstChild(plr).CharacterAdded:Wait()
end

function cmds.GetLocalRoot()
   return (LP.Character or LP.CharacterAdded:Wait()):FindFirstChildOfClass('Humanoid').RootPart
end

function cmds.Kick()
   game:Shutdown()
end

function cmds.Load(...)
   local args = {...}
   loadstring(game:HttpGet(args[1] .. (args[2] == true and args[3] or '')))()
end

function cmds.UniversalRequest()
   return httprequest
end
 
function cmds.RenameEvents(name)
   local vv = 0
   for i,v in next, game.GetDescendants(game) do
      if (v.IsA(v,'RemoteEvent') or v.IsA(v,'RemoteFunction')) and v.Name == '' then
         v.Name = name .. '_' .. vv
      end
   end
end

function cmds.Service(name)
   return game.GetService(game,name)
end

function cmds.owo()
   return 'uwu'   
end

return cmds
