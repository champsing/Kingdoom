tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"使用了"},{"text":"撤退巫術","color":"gold"}]
execute as @a[team=blue,scores={gem=0}] run tp @s @e[tag=spawn,limit=1,sort=random,team=blue_edit]
scoreboard players remove 藍隊靈魂 list 15
tag @s add sorcery_success