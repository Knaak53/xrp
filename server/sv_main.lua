--                                     Licensed under                                     --
-- Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International Public License --

_serverPrefix = "XRP: "
_VERSION = 'PRE-LAUNCH 0.1'
_firstCheckPerformed = false
_UUID = LoadResourceFile(GetCurrentResourceName(), "uuid") or "unknown"

RegisterServerEvent("xrp:firstSpawn")
AddEventHandler("xrp:firstSpawn", function()
    local _source = source
    print("XRP: Player activated: " .. GetPlayerName(_source))

    local id
    for k,v in ipairs(GetPlayerIdentifiers(_source))do
        if string.sub(v, 1, string.len("steam:")) == "steam:" then
            id = v
            break
        end
    end
        
    registerUser(id, _source)
end)

function registerUser(identifier, source)
	local Source = source
	TriggerEvent("xrp_db:doesUserExist", identifier, function(exists)
		if exists then
			loadUser(identifier, Source, false)
		else
			local license = "license:rockstardevlicense" -- DISABLED UNTIL LICENSE WILL WORK
			--[[for k,v in ipairs(GetPlayerIdentifiers(Source))do
				if string.sub(v, 1, string.len("license:")) == "license:" then
					license = v
					break
				end
			end]]
			local name = GetPlayerName(Source)

			TriggerEvent("xrp_db:createUser", identifier, license, name, 25, 1, function()
				loadUser(identifier, Source, true)
			end)
		end
	end)
end

function loadUser(identifier, source, new)
if new then
    print("Player is new")
else 
    print("Player arleady exist in databse")
end
end

AddEventHandler('xrp_db:doesUserExist', function(identifier, cb)
    MySQL.Async.fetchAll('SELECT 1 FROM users WHERE `identifier`=@identifier;', {identifier = identifier}, function(users)
        if users[1] then
            cb(true)
        else
            cb(false)
        end
    end)
end)

AddEventHandler('xrp_db:createUser', function(identifier, license, name, cash, gold, callback)
	local user = {
		identifier = identifier,
		name = name,
		money = cash or 0,
		gold = gold or 0,
		license = license,
		group = 'user'
	}

	MySQL.Async.execute('INSERT INTO users (`identifier`, `money`, `gold`, `group`, `license`, `name`) VALUES (@identifier, @money, @gold, @group, @license, @name);',
	{
		identifier = user.identifier,
		name = user.name,
		money = user.money,
		gold = user.gold,
		group = user.group,
		license = user.license
	}, function(rowsChanged)
		callback()
	end)
end)