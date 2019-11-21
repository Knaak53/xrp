
RegisterServerEvent("xrp:SetSomeGold")
AddEventHandler("xrp:SetSomeGold", function(id, count, cb)
local _source = tonumber(id)

TriggerEvent('xrp:getPlayerFromId', _source, function(user)
		print(user.getIdentifier())
		user.setGold(tonumber(count))
		end)
	end)
	
RegisterServerEvent("xrp:SetSomeMoney")
AddEventHandler("xrp:SetSomeMoney", function(id, count, cb)
local _source = tonumber(id)

TriggerEvent('xrp:getPlayerFromId', _source, function(id)
		id.setMoney(tonumber(count))
		end)
	end)
	
RegisterServerEvent("xrp:AddSomeGold")
AddEventHandler("xrp:AddSomeGold", function(id, count, cb)
local _source = tonumber(id)

TriggerEvent('xrp:getPlayerFromId', _source, function(id)
		id.addGold(tonumber(count))
		end)
	end)
	
RegisterServerEvent("xrp:AddSomeMoney")
AddEventHandler("xrp:AddSomeMoney", function(id, count, cb)
local _source = tonumber(id)

TriggerEvent('xrp:getPlayerFromId', _source, function(id)
		id.addMoney(tonumber(count))
		end)
	end)
	
RegisterServerEvent("xrp:RemoveSomeGold")
AddEventHandler("xrp:RemoveSomeGold", function(id, count, cb)
local _source = tonumber(id)

TriggerEvent('xrp:getPlayerFromId', _source, function(id)
		id.removeGold(tonumber(count))
		end)
	end)
	
RegisterServerEvent("xrp:RemoveSomeMoney")
AddEventHandler("xrp:RemoveSomeMoney", function(id, count, cb)
local _source = tonumber(id)

TriggerEvent('xrp:getPlayerFromId', _source, function(id)
		id.removeMoney(tonumber(count))
		end)
	end)