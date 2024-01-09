tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"使用了"},{"text":"飢餓巫術","color":"gold"}]
effect give @a[team=blue] hunger 30 2
scoreboard players remove 紅隊靈魂 list 5
tag @s add sorcery_success