tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"使用了"},{"text":"修復巫術","color":"gold"}]
execute as @e[tag=build,type=armor_stand,team=red_edit] at @s run function build:clone
scoreboard players remove 紅隊靈魂 list 15
tag @s add sorcery_success