tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"使用了"},{"text":"加速巫術","color":"gold"}]
effect give @a[team=red] speed 30 1
scoreboard players remove 紅隊靈魂 list 5
tag @s add sorcery_success