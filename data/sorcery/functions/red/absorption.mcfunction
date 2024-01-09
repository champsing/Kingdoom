tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"使用了"},{"text":"加血巫術","color":"gold"}]
effect give @a[team=red] absorption 30 3
scoreboard players remove 紅隊靈魂 list 15
tag @s add sorcery_success