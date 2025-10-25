tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"使用了"},{"text":"撤退巫術","color":"gold"}]
execute as @a[team=red] unless entity @s[scores={gem=1..}] run tp @s @e[tag=spawn,limit=1,sort=random,team=red_edit]
scoreboard players remove 紅隊靈魂 list 15
tag @s add sorcery_success