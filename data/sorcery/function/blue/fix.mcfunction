tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"使用了"},{"text":"修復巫術","color":"gold"}]
execute as @e[tag=build,type=armor_stand,team=blue_edit] at @s run function build:clone
scoreboard players remove 藍隊靈魂 list 15
tag @s add sorcery_success