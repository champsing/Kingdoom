tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"使用了"},{"text":"消光巫術","color":"gold"}]
effect clear @a[team=red] glowing
scoreboard players remove 紅隊靈魂 list 10
tag @s add sorcery_success