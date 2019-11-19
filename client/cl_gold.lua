RegisterCommand("setgold", function(source, args, rawCommand)
 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 
 TriggerServerEvent("xrp:SetSomeGold", args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Gold Added")
 end)
 

 end
end, false)

RegisterCommand("setmoney", function(source, args, rawCommand)
 if args[1] == nil or args[2] == nil then
 print("argument #1 or #2 is bad")
 else
 
 TriggerServerEvent("xrp:SetSomeMoney", args[1], args[2], function(cb)
  --TriggerServerEvent("xrp:setPlayerData", args[1], args[2], args[3])
 print("Money Added")
 end)
 

 end
end, false)