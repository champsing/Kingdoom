#---投票---
execute if entity @s[team=red] run function spy:red/vote
execute if entity @s[team=blue] run function spy:blue/vote

tag @s remove vote
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"發起了"},{"text":"間諜投票","color":"gold"}]
scoreboard players reset @s click
scoreboard players enable @s vote