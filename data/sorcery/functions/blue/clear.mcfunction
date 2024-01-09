tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"使用了"},{"text":"消光巫術","color":"gold"}]
effect clear @a[team=blue] glowing
scoreboard players remove 藍隊靈魂 list 10
tag @s add sorcery_success