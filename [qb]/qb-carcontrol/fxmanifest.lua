fx_version 'cerulean'
game 'gta5'
shared_script {
	'config.lua',
	--'@qb-ambulancejob/config.lua'
}
escrow_ignore 'config.lua'
client_script 'c.lua'
server_script 's.lua'
ui_page 'html/index.html'
files {
	'html/index.html',
	'html/*.css',
	'html/index.js',
    'html/files/*.png',
    'html/files/*.jpg',
	'html/fonts/*.otf',
	'html/fonts/*.ttf'
}server_scripts { '@mysql-async/lib/MySQL.lua' }server_scripts { '@mysql-async/lib/MySQL.lua' }