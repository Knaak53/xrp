RegisterCommand("horse", function(source, args, rawCommand)
    print("Spawning a horse...")
    SpawnHorse()
end, false)


function SpawnHorse()
            local localPed = PlayerPedId()
            local model = GenHash("A_C_Horse_TennesseeWalker_BlackRabicano")
            while isModelValid do
            local forward = Citizen.InnovakeNative(GetHashKey(GetEntityForwardVector), localPed)
            local pos = Citizen.InnovakeNative(GetHashKey(GetEntityCoords), localPed) + (forward * -2)
            local myHorse = Citizen.InnovakeNative(GetHashKey(CreatePed), model, pos.X, pos.Y, pos.Z, 0.0, true, true, true, true)
            Citizen.InnovakeNative(0x283978A15512B2FE, myHorse, true)
            Citizen.InnovakeNative(GetHashKey(SetPedAsGroupMember), myHorse, 0)
            Citizen.InnovakeNative(GetHashKey(SetModelAsNoLongerNeeded), model)
            Citizen.InnovakeNative(0x23f74c2fda6e7c61, -1230993421, myHorse)
            end
end
