local money = 0
local gold = 0
local id
local showhud = true

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
	if showhud then
	SetNuiFocus(false, false)
	--DrawHud("$ " .. tonumber(string.format("%.2f", money)) .. "    G " .. tonumber(string.format("%.2f", gold)), 0.75, 0.0, 0.4, 0.4, true, 255, 255, 255)
	else end
    end
    end)
	
RegisterNetEvent('xrp:showID')
AddEventHandler('xrp:showID', function(_id)
if Config.ShowID then
	SendNUIMessage({
		showid = true,
		id = _id
	})
	else end
end)	
	
RegisterNetEvent('xrp:activateMoney')
AddEventHandler('xrp:activateMoney', function(_money)
	SendNUIMessage({
		setmoney = true,
		money = _money
	})
end)

RegisterNetEvent('xrp:activateGold')
AddEventHandler('xrp:activateGold', function(_gold)
	SendNUIMessage({
		setgold = true,
		gold = _gold
	})
end)	
	
RegisterNetEvent("xrp:moneyLoaded")
AddEventHandler("xrp:moneyLoaded", function(_money)
    --money = _money
		SendNUIMessage({
		setmoney = true,
		money = _money
	})
end)

RegisterNetEvent("xrp:goldLoaded")
AddEventHandler("xrp:goldLoaded", function(_gold)
    --gold = _gold
	SendNUIMessage({
		setgold = true,
		gold = _gold
	})
end)


-- Updating
RegisterNetEvent("xrp:addMoney")
AddEventHandler("xrp:addMoney", function(_money, native, current)
    --money = _money
	SendNUIMessage({
			addcash = true,
			money = _money
		})
end)

RegisterNetEvent("xrp:addGold")
AddEventHandler("xrp:addGold", function(_gold, native, current)
    --gold = _gold
	SendNUIMessage({
			addgold = true,
			gold = _gold
		})
end)

RegisterNetEvent("xrp:removeMoney")
AddEventHandler("xrp:removeMoney", function(_money, native, current)
    --money = _money
	SendNUIMessage({
			removecash = true,
			money = _money
		})
end)

RegisterNetEvent("xrp:removeGold")
AddEventHandler("xrp:removeGold", function(_gold, native, current)
    --gold = _gold
	SendNUIMessage({
			removegold = true,
			gold = _gold
		})
end)







--function DrawHud(str, x, y, w, h, enableShadow, col1, col2, col3)
   -- local str = CreateVarString(10, "LITERAL_STRING", str)


    --Citizen.InvokeNative(0x66E0276CC5F6B9DA, 2)
   -- SetTextScale(w, h)
   -- SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), 255)
	--SetTextCentre(true)
   -- if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
   -- DrawText(str, x, y)
--end

--function CreateVarString(p0, p1, variadic)
  --  return Citizen.InvokeNative(0xFA925AC00EB830B9, p0, p1, variadic, Citizen.ResultAsLong())
--end