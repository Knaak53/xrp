
RegisterServerEvent("xrp:SetSomeGold")
AddEventHandler("xrp:SetSomeGold", function(id, count, cb)


TriggerEvent('xrp:getPlayerFromId', source, function(id)
		id.setGold(tonumber(count))
		end)
	end)
	
RegisterServerEvent("xrp:SetSomeMoney")
AddEventHandler("xrp:SetSomeMoney", function(id, count, cb)


TriggerEvent('xrp:getPlayerFromId', source, function(id)
		id.setMoney(tonumber(count))
		end)
	end)