execute at @e[team=blue_edit,tag=spawn,limit=1,sort=random] run summon skeleton ~ ~ ~ {CustomName:'{"text":"藍隊守衛"}',CustomNameVisible:0b,Team:"blue",Tags:["Bguardian"],Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:80f,HandItems:[{id:"iron_sword",count:1b},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"leather_boots",count:1b,components:{"minecraft:dyed_color":{rgb:0}}},{id:"leather_leggings",count:1b,components:{"minecraft:dyed_color":{rgb:0}}},{id:"leather_chestplate",count:1b,components:{"minecraft:dyed_color":{rgb:0}}},{id:"player_head",count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],attributes:[{id:"max_health",base:80},{id:"follow_range",base:5}]}
tellraw @a[team=blue] ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"升級至"},{"text":"三級守衛","color":"gold"}]
scoreboard players add 藍隊守衛 team_upgrade 1
scoreboard players remove @s money 150
xp add @s 6 points
tag @s add upgrade_success