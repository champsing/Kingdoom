execute at @e[tag=forge,team=blue_edit] run setblock ~ ~ ~ end_portal_frame
tellraw @a[team=blue] ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"升級至"},{"text":"一級鍛造台","color":"gold"}]
scoreboard players add 藍隊鍛造台 team_upgrade 1
scoreboard players remove @s money 50
xp add @s 4 points
tag @s add upgrade_success