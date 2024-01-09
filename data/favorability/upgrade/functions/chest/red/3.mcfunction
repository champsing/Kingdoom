execute at @e[type=armor_stand,tag=upgrade,team=red_edit,limit=1] run function upgrade:chest/unlock/2
tellraw @a[team=red] ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"升級至"},{"text":"三級保險箱","color":"gold"}]
scoreboard players add 紅隊保險箱 team_upgrade 1
scoreboard players remove @s money 150
xp add @s 6 points
tag @s add upgrade_success