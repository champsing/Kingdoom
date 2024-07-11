tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"使用了"},{"text":"飢餓巫術","color":"gold"}]
effect give @a[team=red] hunger 30 2
scoreboard players remove 藍隊靈魂 list 5
tag @s add sorcery_success