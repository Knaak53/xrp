--                                     Licensed under                                     --
-- Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International Public License --

--print("LUA: " .. "Version: " .. _VERSION .. " LOADED!")

function printClient(message)
    print("XRP: " .. message)
end

--local firstSpawn = false
--Citizen.CreateThread(function()
    --while firstSpawn == false do
		--print("TEST")
        --Citizen.Wait(0)
        --local spawned = Citizen.InvokeNative(0xB8DFD30D6973E135 --[[NetworkIsPlayerActive]], PlayerPedId(), Citizen.ResultAsInteger())
        --if spawned then
          --  printClient("Player spawned!")
        --    TriggerServerEvent("xrp:firstSpawn", 0)
      --      firstSpawn = true
    --    end
  --  end
--end)

--local firstSpawn = false
--RegisterCommand("start", function(source, args, rawCommand)
    --print("COMMAND START TYPED")
    --while firstSpawn == false do
        --Citizen.Wait(0)
        --local spawned = Citizen.InvokeNative(0xB8DFD30D6973E135 --[[NetworkIsPlayerActive]], PlayerPedId(), Citizen.ResultAsInteger())
        --if spawned then
          --  printClient("Player spawned!")
        --    TriggerServerEvent("xrp:firstSpawn", args[1])
      --      firstSpawn = true
    --    end
  --  end
--end, false)

RegisterCommand("start", function(source, args, rawCommand)
    printClient("Player spawned!")
    TriggerServerEvent("xrp:firstSpawn", args[1])
end)

CreateThread(function()
  while true do
    Wait(0)
	if Config.pvp then
    Citizen.InvokeNative(0xF808475FA571D823, true) --enable friendly fire
   NetworkSetFriendlyFireOption(true)
   --SetCanAttackFriendly(PlayerPedId(), true, true)
   else end
  end
end)

AddEventHandler("onClientResourceStart", function() -- Reveal whole map on spawn and enable pvp
    if Config.RevealMap then
    Citizen.InvokeNative(0x4B8F743A4A6D2FF8, true)
    else end
end)

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
        DrawCoords()
        DisableControlAction(0, 0x580C4473, true)
        DisableControlAction(0, 0xCF8A4ECA, true)
    end
    end)
    

function DrawCoords()
        if Config.Coords then
    local _source = source
    local ent = GetPlayerPed(_source)
    local pp = GetEntityCoords(ent)
    local hd = GetEntityHeading(ent)
    DrawTxt("x = " .. tonumber(string.format("%.2f", pp.x)) .. " y = " .. tonumber(string.format("%.2f", pp.y)) .. " z = " .. tonumber(string.format("%.2f", pp.z)) .. " | H: " .. tonumber(string.format("%.2f", hd)), 0.01, 0.0, 0.4, 0.4, true, 255, 255, 255, 150, false)
    else end
    end


function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
        local str = CreateVarString(10, "LITERAL_STRING", str)
    
    
        --Citizen.InvokeNative(0x66E0276CC5F6B9DA, 2)
        SetTextScale(w, h)
        SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
        SetTextCentre(centre)
        if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
        DisplayText(str, x, y)
    end
    
    function CreateVarString(p0, p1, variadic)
        return Citizen.InvokeNative(0xFA925AC00EB830B9, p0, p1, variadic, Citizen.ResultAsLong())
    end