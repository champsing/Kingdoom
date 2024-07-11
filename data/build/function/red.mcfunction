scoreboard players operation 藍隊分數 list += @s build_operation
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"的"},{"selector":"@s"},{"text":"被破壞, "},{"text":"藍隊","color":"blue"},{"text":"分數+"},{"score":{"name":"@s","objective":"build_operation"}}]
scoreboard players operation @s build_cd *= 紅隊守衛 team_upgrade
xp add @a[team=blue] 7 points