execute at @e[type=marker,tag=Rslave_point,limit=1,sort=random] run summon skeleton ~ ~ ~ {CustomName:{"text":"紅隊奴隸"},CustomNameVisible:0b,Team:"red",Tags:["Rslave"],Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:80f,equipment:{mainhand:{id:"stone_pickaxe",count:1},feet:{id:"leather_boots",count:1,components:{"minecraft:dyed_color":5456701}},legs:{id:"leather_leggings",count:1,components:{"minecraft:dyed_color":2435976}},chest:{id:"leather_chestplate",count:1,components:{"minecraft:dyed_color":294831}},head:{id:"player_head",count:1}},drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f},attributes:[{id:"max_health",base:80},{id:"follow_range",base:5}]}
tellraw @a[team=red] ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"升級至"},{"text":"三級奴隸","color":"gold"}]
scoreboard players add 紅隊奴隸 team_upgrade 1
scoreboard players remove @s money 150
xp add @s 6 points
tag @s add upgrade_success