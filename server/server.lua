AddEventHandler('xrp_db:doesUserExist', function(identifier, callback)
	MySQL.Async.fetchAll('SELECT 1 FROM users WHERE `identifier`=@identifier;', {identifier = identifier}, function(users)
		if users[1] then
			callback(true)
		else
			callback(false)
		end
	end)
end)

AddEventHandler('xrp_db:retrieveUser', function(identifier, callback)
	local Callback = callback
	MySQL.Async.fetchAll('SELECT * FROM users WHERE `identifier`=@identifier;', {identifier = identifier}, function(users)
		if users[1] then
			Callback(users[1])
		else
			Callback(false)
		end
	end)
end)

AddEventHandler('xrp_db:createUser', function(identifier, license, cash, gold, callback)
	local user = {
		identifier = identifier,
		money = cash or 0,
		gold = gold or 0,
		license = license,
		group = 'user',
		permission_level = 0
	}

	MySQL.Async.execute('INSERT INTO users (`identifier`, `money`, `gold`, `group`, `permission_level`, `license`) VALUES (@identifier, @money, @gold, @group, @permission_level, @license);',
	{
		identifier = user.identifier,
		money = user.money,
		gold = user.gold,
		permission_level = user.permission_level,
		group = user.group,
		license = user.license
	}, function(rowsChanged)
		callback()
	end)
end)

AddEventHandler('xrp_db:retrieveLicensedUser', function(license, callback)
	MySQL.Async.fetchAll('SELECT * FROM users WHERE `license`=@license;', {license = license}, function(users)
		if users[1] then
			callback(users[1])
		else
			callback(false)
		end
	end)
end)

AddEventHandler('xrp_db:doesLicensedUserExist', function(license, callback)
	MySQL.Async.fetchAll('SELECT 1 FROM users WHERE `license`=@license;', {license = license}, function(users)
		if users[1] then
			callback(true)
		else
			callback(false)
		end
	end)
end)

AddEventHandler('xrp_db:updateUser', function(identifier, new, callback)
	Citizen.CreateThread(function()
		local updateString = ''
		local params = {identifier = identifier}

		local length = tLength(new)
		local cLength = 1
		for k,v in pairs(new) do
			if (type(k) == 'string') then
				updateString = updateString .. '`' .. k .. '`=@' .. k
				params[k] = v
				if cLength < length then
					updateString = updateString .. ', '
				end
			end
			cLength = cLength + 1
		end

		MySQL.Async.execute('UPDATE users SET ' .. updateString .. ' WHERE `identifier`=@identifier', params, function(rowsChanged)
			if callback then
				callback(true)
			end
		end)
	end)
end)

function tLength(t)
	local l = 0
	for k,v in pairs(t)do
		l = l + 1
	end
	return l
end