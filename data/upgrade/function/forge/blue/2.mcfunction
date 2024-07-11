tellraw @a[team=blue] ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"升級至"},{"text":"二級鍛造台","color":"gold"}]
scoreboard players add 藍隊鍛造台 team_upgrade 1
scoreboard players remove @s money 100
xp add @s 5 points
tag @s add upgrade_success