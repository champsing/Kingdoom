execute at @e[type=area_effect_cloud,tag=Bslave_point,limit=1,sort=random] run summon skeleton ~ ~ ~ {CustomName:'{"text":"藍隊奴隸"}',CustomNameVisible:0b,Team:"blue",Tags:["Bslave"],Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:50f,HandItems:[{id:"stone_pickaxe",count:1b},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"leather_boots",count:1b,components:{"minecraft:dyed_color":{rgb:5456701}}},{id:"leather_leggings",count:1b,components:{"minecraft:dyed_color":{rgb:2435976}}},{id:"leather_chestplate",count:1b,components:{"minecraft:dyed_color":{rgb:294831}}},{id:"player_head",count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],attributes:[{id:"max_health",base:50},{id:"follow_range",base:5}]}
schedule function upgrade:slave/blue/add 60s
tellraw @a[team=blue] ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"升級至"},{"text":"一級奴隸","color":"gold"}]
scoreboard players add 藍隊奴隸 team_upgrade 1
scoreboard players remove @s money 50
xp add @s 4 points
tag @s add upgrade_success