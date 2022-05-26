fx_version 'adamant' 
game 'gta5' 
description 'A clean NUI bank system' 
version '1.0.0' 
author 'NickBlade#5623' 
shared_scripts { 
   './shared/config.lua' 
} 
server_scripts { 
	'./server/client.lua',
	'./server/modules/framework.lua' 
} 
client_scripts { 
	'./client/client.lua', 
	'./client/modules/framework.lua',
	'@oxmysql/lib/MySQL.lua'
} 
