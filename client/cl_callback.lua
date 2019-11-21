local id = 0
local returnedId = -1
local returnedData = nil

local callbackSend = function(name, data, cb)
    local myId = id
    TriggerServerEvent('rdx:callback', id, name, data)
    id = id + 1

while returnedId ~= myId and returnedData == nil do 
    Citizen.Wait(0)
end
    local output = returnedData
    returnedData = nil
    returnedId = -1
    return output
end

AddEventHandler('rdx:callback', function(name, data, cb)
    cb(callbackSend(name, data))
end)

RegisterNetEvent('rdx:callbackReturn')
AddEventHandler('rdx:callbackReturn', function(callbackId, data)
while returnedId ~= -1 do
    Citizen.Wait(0)
end
returnedId = callbackId
returnedData = data
end)