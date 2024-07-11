#---間諜---
tag @r[team=red,tag=!Rking] add Rspy
tag @r[team=blue,tag=!Bking] add Bspy
tellraw @a[tag=Rspy] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你是"},{"text":"藍隊","color":"blue"},{"text":"派出的"},{"text":"間諜"},{"text":", 請小心隱藏身份"}]
tellraw @a[tag=Bspy] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你是"},{"text":"紅隊","color":"red"},{"text":"派出的"},{"text":"間諜"},{"text":", 請小心隱藏身份"}]

execute as @a[team=red] store result score @s Rnumber run scoreboard players add 玩家編號 Rnumber 1
execute as @a[team=blue] store result score @s Bnumber run scoreboard players add 玩家編號 Bnumber 1

#---任務---
execute at @e[type=area_effect_cloud,tag=lobby,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["spy"]}
execute as @e[type=area_effect_cloud,tag=spy,limit=1] run function spy:random