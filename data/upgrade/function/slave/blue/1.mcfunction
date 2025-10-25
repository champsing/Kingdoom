execute at @e[type=marker,tag=Bslave_point,limit=1,sort=random] run summon skeleton ~ ~ ~ {CustomName:{"text":"藍隊奴隸"},CustomNameVisible:0b,Team:"blue",Tags:["Bslave"],Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:50f,equipment:{mainhand:{id:"stone_pickaxe",count:1},feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":5456701}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":2435976}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":294831}},head:{id:"player_head",count:1}},drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f},attributes:[{id:"max_health",base:50},{id:"follow_range",base:5}]}
schedule function upgrade:slave/blue/add 60s
tellraw @a[team=blue] ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"升級至"},{"text":"一級奴隸","color":"gold"}]
scoreboard players add 藍隊奴隸 team_upgrade 1
scoreboard players remove @s money 50
xp add @s 4 points
tag @s add upgrade_success