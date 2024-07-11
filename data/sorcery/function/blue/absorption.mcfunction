tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"使用了"},{"text":"加血巫術","color":"gold"}]
effect give @a[team=blue] absorption 30 3
scoreboard players remove 藍隊靈魂 list 15
tag @s add sorcery_success