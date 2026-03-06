fx_version 'cerulean'
game 'gta5'

name 'beezy-boombox'
author 'Beezy'
description 'Working baseline boombox'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}

shared_scripts {
    'config.lua'
}

client_scripts {
    'client.lua'
}

server_scripts {
    'server.lua'
}
