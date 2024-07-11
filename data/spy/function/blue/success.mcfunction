#---間諜正確---
tellraw @a[team=blue] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"票數最高的玩家"},{"selector":"@s"},{"text":"是"},{"text":"間諜","color":"gold"},{"text":", 紅隊扣"},{"text":"150分","color":"gold"}]

scoreboard players remove 紅隊分數 list 150
team join red @s
execute at @e[team=red_edit,tag=spawn,limit=1,sort=random] run spawnpoint @s ~ ~ ~
tag @s remove Bspy
scoreboard players reset @s spy