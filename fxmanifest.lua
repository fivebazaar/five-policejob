fx_version 'cerulean'
game 'gta5'

author 'fivebazaar'
description 'Five Police Job'

client_scripts {
    'client/*.lua',
    'bridge/framework/init.lua',
    'bridge/inventory/init.lua'
}

server_scripts {
    'server/*.lua',
    'bridge/framework/init.lua',
    'bridge/inventory/init.lua'
}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
}

files {
    'bridge/framework/**/client.lua',
    'bridge/framework/**/server.lua',
    'bridge/inventory/**/client.lua',
    'bridge/inventory/**/server.lua'
}

dependency 'ox_lib'

provide {
    'qb-policejob',
    'qbx_policejob'
}