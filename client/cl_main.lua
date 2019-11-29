--                                     Licensed under                                     --
-- Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International Public License --

--print("LUA: " .. "Version: " .. _VERSION .. " LOADED!")

function printClient(message)
    print("XRP: " .. message)
end

local firstSpawn = false

Citizen.CreateThread(function()
    while firstSpawn == false do
        Citizen.Wait(0)
        local spawned = Citizen.InvokeNative(0xB8DFD30D6973E135 --[[NetworkIsPlayerActive]], PlayerPedId(), Citizen.ResultAsInteger())
        if spawned then
            printClient("Player spawned!")
            TriggerServerEvent("xrp:firstSpawn")
            firstSpawn = true
        end
    end
end)

AddEventHandler("onClientResourceStart", function() -- Reveal whole map on spawn
	Citizen.InvokeNative(0x4B8F743A4A6D2FF8, true)
end)