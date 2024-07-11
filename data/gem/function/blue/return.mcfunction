tag @s remove Bdrop
clear @s diamond[custom_data~{team:"blue"}]
scoreboard players reset 紅隊捍衛最大值 list2
bossbar set blue name ["",{"text":"藍隊國王: ","color":"blue"},{"selector":"@a[tag=Bking]"}]
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊寶石","color":"blue"},{"text":"已回歸至國王身上"}]
effect give @s health_boost infinite 4 true
effect give @s regeneration 1 200 true