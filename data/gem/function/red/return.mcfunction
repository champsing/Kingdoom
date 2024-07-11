tag @s remove Rdrop
clear @s diamond[custom_data~{team:"red"}]
scoreboard players reset 藍隊捍衛最大值 list2
bossbar set red name ["",{"text":"紅隊國王: ","color":"red"},{"selector":"@a[tag=Rking]"}]
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊寶石","color":"red"},{"text":"已回歸至國王身上"}]
effect give @s health_boost infinite 4 true
effect give @s regeneration 1 200 true