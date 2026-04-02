fx_version "cerulean"
game "gta5"
lua54 "yes"

ui_page "index.html"

shared_scripts {
	"config.lua"
}

files {
	"index.html",
	"styles.css",
	"app.js"
}

client_scripts {
	"@vrp/lib/Utils.lua",
	"client-side/core.lua"
}

server_scripts {
	"@vrp/lib/Utils.lua",
	"server-side/core.lua"
}

dependency "vrp"
