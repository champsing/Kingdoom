tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"使用了"},{"text":"援兵巫術","color":"gold"}]
execute at @a[team=red] run summon skeleton ~ ~ ~ {PortalCooldown:6000,Tags:["teammate"],DeathLootTable:"minecraft:empty",CustomName:'{"text":"紅隊友軍"}',CustomNameVisible:1,ArmorItems:[{id:"iron_boots",tag:{Unbreakable:1},Count:1},{id:"iron_leggings",tag:{Unbreakable:1},Count:1},{id:"iron_chestplate",tag:{Unbreakable:1},Count:1},{id:"iron_helmet",tag:{Unbreakable:1},Count:1}],HandItems:[{id:"stone_sword",tag:{Unbreakable:1},Count:1},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],Attributes:[{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.follow_range",Base:40}],PersistenceRequired:1,Silent:1,Team:"red"}
scoreboard players remove 紅隊靈魂 list 15
tag @s add sorcery_success