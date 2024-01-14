local postalFile = 'json/new-postals.json'

fx_version 'cerulean'
game 'gta5'

lua54 "yes"

author 'sqq-POSTAL'
description 'sqq-postal - By Snnacqq'
version '1.5.3'

url 'https://github.com/DevBlocky/sqq-postal'

client_scripts {
    'config.lua',
    'client/cl.lua',
    'client/cl_commands.lua',
    'client/cl_render.lua',
}

server_scripts {
    'config.lua',
}

file(postalFile)
postal_file(postalFile)

file 'version.json'

server_export 'getPostalServer'

