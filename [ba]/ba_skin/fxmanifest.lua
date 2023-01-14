fx_version 'cerulean'
games { 'gta5' }

author 'Bazsi'
description 'Skinchanger'
version '0.0.1'

client_scripts {
    'client/skin.lua'
}

server_scripts {
    'server/skin.lua',
    '@mysql-async/lib/MySQL.lua'
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/cloth.html',
    'ui/style.css',
    'ui/main.js'
}
