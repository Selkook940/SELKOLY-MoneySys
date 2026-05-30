fx_version 'cerulean'
game 'gta5'

name        'Polerq'
description 'HTML NUI tabanlı para/banka HUD sistemi'
version     '2.0.0'
author      'Server'

-- ---- Server Scripts ----
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server.lua'
}

-- ---- Client Scripts ----
client_scripts {
    'client.lua'
}

-- ---- NUI (HTML HUD) ----
ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}
