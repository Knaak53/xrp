resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
	'config.lua',
	'spawnpoints.lua',
	'client/cl_functions.lua',
	'client/cl_main.lua',
}

server_scripts {
	'server/sv_main.lua',
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
}
