scoreboard players operation 紅隊分數 list += @s build_operation
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"的"},{"selector":"@s"},{"text":"被破壞, "},{"text":"紅隊","color":"red"},{"text":"分數+"},{"score":{"name":"@s","objective":"build_operation"}}]
scoreboard players operation @s build_cd *= 藍隊守衛 team_upgrade
xp add @a[team=red] 7 points