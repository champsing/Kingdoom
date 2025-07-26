execute at @e[type=armor_stand,tag=upgrade,team=blue_edit,limit=1] run setblock ~ ~1 ~ blue_shulker_box{lock:{components:{"minecraft:custom_name":"§9藍隊保險箱鑰匙"}},CustomName:{"text":"保險箱"}}
give @a[team=blue] blaze_rod[custom_name={"text":"§9藍隊保險箱鑰匙"},custom_data={upgrade:2,lock:"blue"}]
tag @e[type=armor_stand,tag=upgrade,team=blue_edit,limit=1] add chest
tellraw @a[team=blue] ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"升級至"},{"text":"一級保險箱","color":"gold"}]
scoreboard players add 藍隊保險箱 team_upgrade 1
scoreboard players remove @s money 50
xp add @s 4 points
tag @s add upgrade_success