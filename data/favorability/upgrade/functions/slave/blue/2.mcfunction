execute at @e[type=area_effect_cloud,tag=Bslave_point,limit=1,sort=random] run summon skeleton ~ ~ ~ {CustomName:'{"text":"藍隊奴隸"}',CustomNameVisible:0b,Team:"blue",Tags:["Bslave"],Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:65f,HandItems:[{id:"stone_pickaxe",Count:1b},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:5456701}}},{id:"leather_leggings",Count:1b,tag:{display:{color:2435976}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:294831}}},{id:"player_head",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:65},{Name:"generic.follow_range",Base:5}]}
tellraw @a[team=blue] ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"升級至"},{"text":"二級奴隸","color":"gold"}]
scoreboard players add 藍隊奴隸 team_upgrade 1
scoreboard players remove @s money 100
xp add @s 5 points
tag @s add upgrade_success