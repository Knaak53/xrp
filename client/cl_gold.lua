RegisterCommand("setgold", function(source, args, rawCommand)
 local _source = 1
 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 
 TriggerServerEvent("xrp:SetSomeGold", _source, args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Gold Setted")
 end)
 

 end
end, false)

RegisterCommand("setmoney", function(source, args, rawCommand)
 local _source = 1
 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:SetSomeMoney", _source, args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Money Setted")
 end)
 

 end
end, false)

RegisterCommand("setlevel", function(source, args, rawCommand)
 local _source = 1
 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:SetSomeLevel", _source, args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Level Setted")
 end)
 

 end
end, false)

RegisterCommand("setxp", function(source, args, rawCommand)
 local _source = 1
 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:SetSomeXP", _source, args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("XP Setted")
 end)
 

 end
end, false)

RegisterCommand("addmoney", function(source, args, rawCommand)
 local _source = 1
 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:AddSomeMoney", _source, args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Money Added")
 end)
 

 end
end, false)


RegisterCommand("addgold", function(source, args, rawCommand)
 local _source = 1
 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:AddSomeGold", _source, args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Gold Added")
 end)
 

 end
end, false)

RegisterCommand("addxp", function(source, args, rawCommand)
 local _source = 1
 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:AddSomeXP", _source, args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("XP Added")
 end)
 

 end
end, false)

RegisterCommand("removemoney", function(source, args, rawCommand)
 local _source = 1
 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:RemoveSomeMoney", _source, args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Money Removed")
 end)
 

 end
end, false)

RegisterCommand("removegold", function(source, args, rawCommand)
 local _source = 1
 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:RemoveSomeGold", _source, args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Gold Removed")
 end)
 

 end
end, false)

RegisterCommand("setgroup", function(source, args, rawCommand)
 local _source = 1
 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:SetSomeGroup", _source, args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Group Setted")
 end)
 

 end
end, false)