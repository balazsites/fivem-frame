fx_version 'cerulean'
games { 'gta5' }

author 'Bazsi'
description 'Graázs'
version '0.0.1'

shared_script 'config.lua'

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua',
    '@mysql-async/lib/MySQL.lua'
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/style.css'
}
