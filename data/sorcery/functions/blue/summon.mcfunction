tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"使用了"},{"text":"援兵巫術","color":"gold"}]
execute at @a[team=blue] run summon skeleton ~ ~ ~ {PortalCooldown:6000,Tags:["teammate"],DeathLootTable:"minecraft:empty",CustomName:'{"text":"藍隊友軍"}',CustomNameVisible:1,ArmorItems:[{id:"iron_boots",tag:{Unbreakable:1},Count:1},{id:"iron_leggings",tag:{Unbreakable:1},Count:1},{id:"iron_chestplate",tag:{Unbreakable:1},Count:1},{id:"iron_helmet",tag:{Unbreakable:1},Count:1}],HandItems:[{id:"stone_sword",tag:{Unbreakable:1},Count:1},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],Attributes:[{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.follow_range",Base:40}],PersistenceRequired:1,Silent:1,Team:"blue"}
scoreboard players remove 藍隊靈魂 list 15
tag @s add sorcery_success