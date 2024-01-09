tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"使用了"},{"text":"力量巫術","color":"gold"}]
effect give @a[team=red] strength 30 1
scoreboard players remove 紅隊靈魂 list 10
tag @s add sorcery_success