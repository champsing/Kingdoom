tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"使用了"},{"text":"抗性巫術","color":"gold"}]
effect give @a[team=red] resistance 30 1
scoreboard players remove 紅隊靈魂 list 10
tag @s add sorcery_success