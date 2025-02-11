setblock ~ ~ ~ air
execute if entity @e[tag=build_setting] run return run function edit:build/fail

tag @s add build_setting
tag @s add build
tag @s remove Abuild

tellraw @p ["",{"text":">> ","bold":true,"color":"gold"},{"text":"建築物點A設定"},{"text":"完成","color":"gold"},{"text":", 請設定建築物點B"}]