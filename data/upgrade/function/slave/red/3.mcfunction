execute at @e[type=area_effect_cloud,tag=Rslave_point,limit=1,sort=random] run summon skeleton ~ ~ ~ {CustomName:'{"text":"紅隊奴隸"}',CustomNameVisible:0b,Team:"red",Tags:["Rslave"],Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:80f,HandItems:[{id:"stone_pickaxe",count:1b},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"leather_boots",count:1b,components:{"minecraft:dyed_color":{rgb:5456701}}},{id:"leather_leggings",count:1b,components:{"minecraft:dyed_color":{rgb:2435976}}},{id:"leather_chestplate",count:1b,components:{"minecraft:dyed_color":{rgb:294831}}},{id:"player_head",count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],attributes:[{id:"max_health",base:80},{id:"follow_range",base:5}]}
tellraw @a[team=red] ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"升級至"},{"text":"三級奴隸","color":"gold"}]
scoreboard players add 紅隊奴隸 team_upgrade 1
scoreboard players remove @s money 150
xp add @s 6 points
tag @s add upgrade_success