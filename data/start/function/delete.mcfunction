function start:uninstall
scoreboard objectives remove build
scoreboard objectives remove build_score
scoreboard objectives remove build_operation
scoreboard objectives remove build_cd
scoreboard objectives remove sizex
scoreboard objectives remove sizey
scoreboard objectives remove sizez
scoreboard objectives remove sizex2
scoreboard objectives remove sizey2
scoreboard objectives remove sizez2
scoreboard objectives remove curx
scoreboard objectives remove cury
scoreboard objectives remove curz
scoreboard objectives remove x_reverse
scoreboard objectives remove y_reverse

scoreboard objectives remove border_x
scoreboard objectives remove border_y
scoreboard objectives remove border_z

team remove red
team remove blue
team remove red_edit
team remove blue_edit
team remove spec
team remove gold

kill @e[tag=edit]
kill @e[tag=atm]
kill @e[tag=shop]
kill @e[tag=lobby]
kill @e[tag=display]

gamerule announceAdvancements true
gamerule commandBlockOutput true
gamerule doDaylightCycle true
gamerule doEntityDrops true
gamerule doFireTick true
gamerule doInsomnia true
gamerule doImmediateRespawn false
gamerule doLimitedCrafting false
gamerule doMobLoot true
gamerule doMobSpawning true
gamerule doPatrolSpawning true
gamerule doTileDrops true
gamerule doTraderSpawning true
gamerule doWeatherCycle true
gamerule fallDamage true
gamerule keepInventory false
gamerule logAdminCommands true
gamerule reducedDebugInfo false
gamerule sendCommandFeedback true
gamerule spawnRadius 10
gamerule locatorBar true

clear @a