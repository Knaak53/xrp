RegisterCommand("horse", function(source, args, rawCommand)
    print("Spawning a horse...")
    SpawnHorse()
end, false)


function SpawnHorse()
            local localPed = PlayerPedId()
            local model = GetHashKey("A_C_Horse_TennesseeWalker_BlackRabicano")
           -- while isModelValid do A_C_Horse_TennesseeWalker_BlackRabicano
            local forward = Citizen.InvokeNative(0x2412D9C05BB09B97, localPed)
            local pos = GetEntityCoords(localPed)
            local myHorse = Citizen.InvokeNative(0xD49F9B0955C367DE, model, pos.x, pos.y, pos.z, 0.0, true, true, true, true)
            Citizen.InvokeNative(0x283978A15512B2FE, myHorse, true)
            Citizen.InvokeNative(0x9F3480FE65DB31B5, myHorse, 0)
            Citizen.InvokeNative(0x4AD96EF928BD4F9A, model)
            Citizen.InvokeNative(0x23f74c2fda6e7c61, -1230993421, myHorse) --Sets the horse blip
            --end
end