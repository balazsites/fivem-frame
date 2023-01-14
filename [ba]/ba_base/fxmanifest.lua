fx_version 'cerulean'
games { 'gta5' }

author 'Bazsi'
description 'Base'
version '0.0.1'

client_scripts {
    'client/register.lua'
}

server_scripts {
    'server/register.lua',
    'server/commands.lua',
    '@mysql-async/lib/MySQL.lua'
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/style.css',
    'ui/main.js'
}