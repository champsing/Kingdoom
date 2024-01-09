tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"使用了"},{"text":"加速巫術","color":"gold"}]
effect give @a[team=blue] speed 30 1
scoreboard players remove 藍隊靈魂 list 5
tag @s add sorcery_success