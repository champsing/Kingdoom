function start:uninstall
function start:install

team leave @a

execute at @e[tag=edit] run setblock ~ ~ ~ air

execute at @e[type=area_effect_cloud,tag=lobby] if block ~ ~-1 ~ air run function start:lobby
execute at @e[type=area_effect_cloud,tag=lobby] positioned ~-7 ~1 ~9 run function edit:exit

schedule clear game:period
schedule clear game:daynight
schedule clear game:time
schedule clear stamina:regain
schedule clear event:start
schedule clear upgrade:slave/red/add
schedule clear upgrade:slave/blue/add

tag @e[tag=chest] remove chest
tag @a remove start
tag @a remove join
tag @a remove Rking
tag @a remove Bking
tag @a remove Rspy
tag @a remove Bspy
kill @e[tag=forge_sword]
kill @e[tag=Ginv]
kill @e[tag=Rguardian]
kill @e[tag=Bguardian]
kill @e[tag=Rslave]
kill @e[tag=Bslave]
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"資料包","color":"gold"},{"text":"已重置完畢"}]