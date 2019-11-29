
RegisterServerEvent("xrp:SetSomeGold")
AddEventHandler("xrp:SetSomeGold", function(id, count, cb)
	local _perm = tonumber(source)
	TriggerEvent('xrp:getPlayerFromId', _perm, function(pg)
	if (pg.getGroup() ~= "admin" and pg.getGroup() ~= "superadmin") then
	--print(pg.getGroup())
	print(pg.getName() .. " - With ID: " .. _perm .. " - TRIED TO RUN ADMIN COMMAND WITHOUT PERMISSION")
	
	else
	
	local _source = tonumber(id)
		TriggerEvent('xrp:getPlayerFromId', _source, function(user)
		--print(user.getIdentifier())
		user.setGold(tonumber(count))
		end)
		
	end
	
	end)
	end)
	
RegisterServerEvent("xrp:SetSomeMoney")
AddEventHandler("xrp:SetSomeMoney", function(id, count, cb)
	local _perm = tonumber(source)
	TriggerEvent('xrp:getPlayerFromId', _perm, function(pg)
	if (pg.getGroup() ~= "admin" and pg.getGroup() ~= "superadmin") then
	
	print(pg.getName() .. " - With ID: " .. _perm .. " - TRIED TO RUN ADMIN COMMAND WITHOUT PERMISSION")
	
	else
	
	local _source = tonumber(id)
		TriggerEvent('xrp:getPlayerFromId', _source, function(user)
		--print(user.getIdentifier())
		user.setMoney(tonumber(count))
		end)
		
	end
	
	end)
	end)
	
RegisterServerEvent("xrp:AddSomeGold")
AddEventHandler("xrp:AddSomeGold", function(id, count, cb)
	local _perm = tonumber(source)
	TriggerEvent('xrp:getPlayerFromId', _perm, function(pg)
	if (pg.getGroup() ~= "admin" and pg.getGroup() ~= "superadmin") then
	
	print(pg.getName() .. " - With ID: " .. _perm .. " - TRIED TO RUN ADMIN COMMAND WITHOUT PERMISSION")
	
	else
	
	local _source = tonumber(id)
		TriggerEvent('xrp:getPlayerFromId', _source, function(user)
		--print(user.getIdentifier())
		user.addGold(tonumber(count))
		end)
		
	end
	
	end)
	end)
	
RegisterServerEvent("xrp:AddSomeMoney")
AddEventHandler("xrp:AddSomeMoney", function(id, count, cb)
	local _perm = tonumber(source)
	TriggerEvent('xrp:getPlayerFromId', _perm, function(pg)
	if (pg.getGroup() ~= "admin" and pg.getGroup() ~= "superadmin") then
	
	print(pg.getName() .. " - With ID: " .. _perm .. " - TRIED TO RUN ADMIN COMMAND WITHOUT PERMISSION")
	
	else
	
	local _source = tonumber(id)
		TriggerEvent('xrp:getPlayerFromId', _source, function(user)
		--print(user.getIdentifier())
		user.addMoney(tonumber(count))
		end)
		
	end
	
	end)
	end)
	
RegisterServerEvent("xrp:RemoveSomeGold")
AddEventHandler("xrp:RemoveSomeGold", function(id, count, cb)
	local _perm = tonumber(source)
	TriggerEvent('xrp:getPlayerFromId', _perm, function(pg)
	if (pg.getGroup() ~= "admin" and pg.getGroup() ~= "superadmin") then
	
	print(pg.getName() .. " - With ID: " .. _perm .. " - TRIED TO RUN ADMIN COMMAND WITHOUT PERMISSION")
	
	else
	
	local _source = tonumber(id)
		TriggerEvent('xrp:getPlayerFromId', _source, function(user)
		--print(user.getIdentifier())
		user.removeGold(tonumber(count))
		end)
		
	end
	
	end)
	end)
	
RegisterServerEvent("xrp:RemoveSomeMoney")
AddEventHandler("xrp:RemoveSomeMoney", function(id, count, cb)
	local _perm = tonumber(source)
	TriggerEvent('xrp:getPlayerFromId', _perm, function(pg)
	if (pg.getGroup() ~= "admin" and pg.getGroup() ~= "superadmin") then
	
	print(pg.getName() .. " - With ID: " .. _perm .. " - TRIED TO RUN ADMIN COMMAND WITHOUT PERMISSION")
	
	else
	
	local _source = tonumber(id)
		TriggerEvent('xrp:getPlayerFromId', _source, function(user)
		--print(user.getIdentifier())
		user.removeMoney(tonumber(count))
		end)
		
	end
	
	end)
	end)
	
RegisterServerEvent("xrp:AddSomeXP")
AddEventHandler("xrp:AddSomeXP", function(id, count, cb)
	local _perm = tonumber(source)
	TriggerEvent('xrp:getPlayerFromId', _perm, function(pg)
	if (pg.getGroup() ~= "admin" and pg.getGroup() ~= "superadmin") then
	
	print(pg.getName() .. " - With ID: " .. _perm .. " - TRIED TO RUN ADMIN COMMAND WITHOUT PERMISSION")
	
	else
	
	local _source = tonumber(id)
		TriggerEvent('xrp:getPlayerFromId', _source, function(user)
		--print(user.getIdentifier())
		user.addXP(tonumber(count))
		end)
		
	end
	
	end)
	end)
	
RegisterServerEvent("xrp:SetSomeLevel")
AddEventHandler("xrp:SetSomeLevel", function(id, count, cb)
	local _perm = tonumber(source)
	TriggerEvent('xrp:getPlayerFromId', _perm, function(pg)
	if (pg.getGroup() ~= "admin" and pg.getGroup() ~= "superadmin") then
	
	print(pg.getName() .. " - With ID: " .. _perm .. " - TRIED TO RUN ADMIN COMMAND WITHOUT PERMISSION")
	
	else
	
	local _source = tonumber(id)
		TriggerEvent('xrp:getPlayerFromId', _source, function(user)
		--print(user.getIdentifier())
		user.setLevel(tonumber(count))
		end)
		
	end
	
	end)
	end)
	
RegisterServerEvent("xrp:SetSomeXP")
AddEventHandler("xrp:SetSomeXP", function(id, count, cb)
	local _perm = tonumber(source)
	TriggerEvent('xrp:getPlayerFromId', _perm, function(pg)
	if (pg.getGroup() ~= "admin" and pg.getGroup() ~= "superadmin") then
	
	print(pg.getName() .. " - With ID: " .. _perm .. " - TRIED TO RUN ADMIN COMMAND WITHOUT PERMISSION")
	
	else
	
	local _source = tonumber(id)
		TriggerEvent('xrp:getPlayerFromId', _source, function(user)
		--print(user.getIdentifier())
		user.setXP(tonumber(count))
		end)
		
	end
	
	end)
	end)	
	
RegisterServerEvent("xrp:SetSomeGroup")
AddEventHandler("xrp:SetSomeGroup", function(id, count, cb)
	local _perm = tonumber(source)
	TriggerEvent('xrp:getPlayerFromId', _perm, function(pg)
	if pg.getGroup() ~= 'superadmin' then
	
	print(pg.getName() .. " - With ID: " .. _perm .. " - TRIED TO RUN SUPER ADMIN COMMAND WITHOUT PERMISSION")
	
	else
	
	local _source = tonumber(id)
		TriggerEvent('xrp:getPlayerFromId', _source, function(user)
		--print(user.getIdentifier())
		user.setGroup(count)
		end)
		
	end
	
	end)
	end)