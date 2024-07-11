#---間諜正確---
tellraw @a[team=red] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"票數最高的玩家"},{"selector":"@s"},{"text":"是"},{"text":"間諜","color":"gold"},{"text":", 藍隊扣"},{"text":"150分","color":"gold"}]

scoreboard players remove 藍隊分數 list 150
team join blue @s
execute at @e[team=blue_edit,tag=spawn,limit=1,sort=random] run spawnpoint @s ~ ~ ~
tag @s remove Rspy
scoreboard players reset @s spy