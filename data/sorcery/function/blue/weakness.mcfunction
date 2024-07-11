tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"使用了"},{"text":"虛弱巫術","color":"gold"}]
effect give @a[team=red] weakness 30 0
scoreboard players remove 藍隊靈魂 list 15
tag @s add sorcery_success