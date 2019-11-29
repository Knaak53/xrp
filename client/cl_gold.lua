if Config.AdminCommands then
RegisterCommand("setgold", function(source, args, rawCommand)
 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 
 TriggerServerEvent("xrp:SetSomeGold", args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Gold Setted")
 end)
 

 end
end, false)

RegisterCommand("setmoney", function(source, args, rawCommand)

 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:SetSomeMoney", args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Money Setted")
 end)
 

 end
end, false)

RegisterCommand("setlevel", function(source, args, rawCommand)

 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:SetSomeLevel", args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Level Setted")
 end)
 

 end
end, false)

RegisterCommand("setxp", function(source, args, rawCommand)

 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:SetSomeXP", args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("XP Setted")
 end)
 

 end
end, false)

RegisterCommand("addmoney", function(source, args, rawCommand)

 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:AddSomeMoney", args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Money Added")
 end)
 

 end
end, false)


RegisterCommand("addgold", function(source, args, rawCommand)

 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:AddSomeGold", args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Gold Added")
 end)
 

 end
end, false)

RegisterCommand("addxp", function(source, args, rawCommand)

 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:AddSomeXP", args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("XP Added")
 end)
 

 end
end, false)

RegisterCommand("removemoney", function(source, args, rawCommand)

 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:RemoveSomeMoney", args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Money Removed")
 end)
 

 end
end, false)

RegisterCommand("removegold", function(source, args, rawCommand)

 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:RemoveSomeGold", args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Gold Removed")
 end)
 

 end
end, false)

RegisterCommand("setgroup", function(source, args, rawCommand)

 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 TriggerServerEvent("xrp:SetSomeGroup", args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Group Setted")
 end)
 

 end
end, false)
else end