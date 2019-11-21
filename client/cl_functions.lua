--RegisterCommand("devprint", function(source, args, rawCommand)
  --  print("DEV PRINT")
--end, false)

RegisterCommand("respawn", function(source, args, rawCommand) -- Its breaking the time for now - just dev command
local _source = source
if Config.RespawnCommand then
	respawn(_source)
	else
	end
end, false)

RegisterCommand("kys", function(source, args, rawCommand) -- KILL YOURSELF COMMAND
local _source = source
if Config.kysCommand then
	local pl = Citizen.InvokeNative(0x217E9DC48139933D)
    local ped = Citizen.InvokeNative(0x275F255ED201B937, pl)
        Citizen.InvokeNative(0x697157CED63F18D4, ped, 500000, false, true, true)
		else end
end, false)



AddEventHandler("onClientResourceStart", function() -- Reveal whole map on spawn
	Citizen.InvokeNative(0x4B8F743A4A6D2FF8, true)
end)

Citizen.CreateThread(function()
while true do
Citizen.Wait(0) -- DO NOT REMOVE
local pl = Citizen.InvokeNative(0x217E9DC48139933D)
	while Citizen.InvokeNative(0x2E9C3FCB6798F397, pl) do
	Citizen.Wait(0) -- DO NOT REMOVE
	local timer = GetGameTimer()+Config.RespawnTime
	while timer >= GetGameTimer() do
	
	Citizen.Wait(0) -- DO NOT REMOVE
		Citizen.InvokeNative(0xFA08722A5EA82DA7, Config.Timecycle)
		Citizen.InvokeNative(0xFDB74C9CC54C3F37, Config.TimecycleStrenght)
		Citizen.InvokeNative(0x405224591DF02025, 0.50, 0.475, 1.0, 0.22, 1, 1, 1, 100, true, true)
		DrawTxt(Config.LocaleDead, 0.50, 0.40, 1.0, 1.0, true, 161, 3, 0, 255, true)
		DrawTxt(Config.LocaleTimer .. " " .. tonumber(string.format("%.0f", (((GetGameTimer() - timer) * -1)/1000))), 0.50, 0.50, 0.7, 0.7, true, 255, 255, 255, 255, true) 
			--print ("PLAYER IS DEAD")
				end
				--Citizen.InvokeNative(0x40C719A5E410B9E4, 1) -- FADE OUT    //   BROKEN AT THIS MOMENT 18/11/2019
				respawn() -- Calling the respawn function here
				Citizen.Wait(1)
					end
						end
end)


Citizen.CreateThread(function()
while true do
Citizen.Wait(0)
if Config.Coords then
local ent = GetPlayerPed(source)
local pp = GetEntityCoords(ent)
local hd = GetEntityHeading(ent)
DrawTxt("x = " .. tonumber(string.format("%.2f", pp.x)) .. " y = " .. tonumber(string.format("%.2f", pp.y)) .. " z = " .. tonumber(string.format("%.2f", pp.z)) .. " | H: " .. tonumber(string.format("%.2f", hd)), 0.01, 0.0, 0.4, 0.4, true, 255, 255, 255, 150, false)
else end
end
end)


function respawn(source)
local _source = source
	local spawnpoint = Config.Spawnpoints[math.random(#Config.Spawnpoints)]
	local pl = Citizen.InvokeNative(0x217E9DC48139933D)
    local ped = Citizen.InvokeNative(0x275F255ED201B937, pl)
    Citizen.InvokeNative(0x71BC8E838B9C6035, ped)
	SetEntityCoords(ped, spawnpoint.x, spawnpoint.y, spawnpoint.z)
	Citizen.InvokeNative(0x0E3F4AF2D63491FB)
end

--=============================================================-- DRAW TEXT SECTION--=============================================================--
function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)


    --Citizen.InvokeNative(0x66E0276CC5F6B9DA, 2)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
	SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
    DrawText(str, x, y)
end

function CreateVarString(p0, p1, variadic)
    return Citizen.InvokeNative(0xFA925AC00EB830B9, p0, p1, variadic, Citizen.ResultAsLong())
end