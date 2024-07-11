#---鐵---
function ore:random
xp add @s 5 points
scoreboard players add @s money 1
scoreboard players reset @s iron
scoreboard players reset @s Diron

execute if entity @s[team=red] store result score 紅隊奴隸點 list2 if entity @e[type=area_effect_cloud,tag=Rslave_point]
execute if entity @s[team=blue] store result score 藍隊奴隸點 list2 if entity @e[type=area_effect_cloud,tag=Bslave_point]
execute if entity @s[team=red] unless entity @e[tag=Rslave_point,distance=..1.5] if score 紅隊奴隸點 list2 matches ..10 run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["Rslave_point"]}
execute if entity @s[team=blue] unless entity @e[tag=Bslave_point,distance=..1.5] if score 藍隊奴隸點 list2 matches ..10 run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["Bslave_point"]}