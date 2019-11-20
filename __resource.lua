resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
	'config.lua',
	'client/cl_functions.lua',
	'client/cl_main.lua',
	'client/cl_hud.lua',
	'client/cl_gold.lua',
	'html/ui.html',
	'html/style.css',
	'html/crock.ttf',
}

server_scripts {
	'server/sv_main.lua',
	'server/sv_player.lua',
	'server/sv_gold.lua',
	'server/sv_groups.lua',
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
}

files{
'html/ui.html',
'html/style.css',
'html/crock.ttf',
}

ui_page 'html/ui.html'