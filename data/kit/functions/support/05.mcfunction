#---召喚---
execute if entity @s[team=red] run summon skeleton ~ ~ ~ {PortalCooldown:6000,Tags:["teammate"],DeathLootTable:"minecraft:empty",CustomName:'{"text":"紅隊友軍"}',CustomNameVisible:1,ArmorItems:[{id:"iron_boots",tag:{Unbreakable:1},Count:1},{id:"iron_leggings",tag:{Unbreakable:1},Count:1},{id:"iron_chestplate",tag:{Unbreakable:1},Count:1},{id:"iron_helmet",tag:{Unbreakable:1},Count:1}],HandItems:[{id:"stone_sword",tag:{Unbreakable:1},Count:1},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],Attributes:[{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.follow_range",Base:60}],PersistenceRequired:1,Silent:1,Team:"red"}
execute if entity @s[team=red] run summon skeleton ~ ~ ~ {PortalCooldown:6000,Tags:["teammate"],DeathLootTable:"minecraft:empty",CustomName:'{"text":"紅隊友軍"}',CustomNameVisible:1,ArmorItems:[{id:"iron_boots",tag:{Unbreakable:1},Count:1},{id:"iron_leggings",tag:{Unbreakable:1},Count:1},{id:"iron_chestplate",tag:{Unbreakable:1},Count:1},{id:"iron_helmet",tag:{Unbreakable:1},Count:1}],HandItems:[{id:"stone_sword",tag:{Unbreakable:1},Count:1},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],Attributes:[{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.follow_range",Base:60}],PersistenceRequired:1,Silent:1,Team:"red"}

execute if entity @s[team=blue] run summon skeleton ~ ~ ~ {PortalCooldown:6000,Tags:["teammate"],DeathLootTable:"minecraft:empty",CustomName:'{"text":"藍隊友軍"}',CustomNameVisible:1,ArmorItems:[{id:"iron_boots",tag:{Unbreakable:1},Count:1},{id:"iron_leggings",tag:{Unbreakable:1},Count:1},{id:"iron_chestplate",tag:{Unbreakable:1},Count:1},{id:"iron_helmet",tag:{Unbreakable:1},Count:1}],HandItems:[{id:"stone_sword",tag:{Unbreakable:1},Count:1},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],Attributes:[{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.follow_range",Base:60}],PersistenceRequired:1,Silent:1,Team:"blue"}
execute if entity @s[team=blue] run summon skeleton ~ ~ ~ {PortalCooldown:6000,Tags:["teammate"],DeathLootTable:"minecraft:empty",CustomName:'{"text":"藍隊友軍"}',CustomNameVisible:1,ArmorItems:[{id:"iron_boots",tag:{Unbreakable:1},Count:1},{id:"iron_leggings",tag:{Unbreakable:1},Count:1},{id:"iron_chestplate",tag:{Unbreakable:1},Count:1},{id:"iron_helmet",tag:{Unbreakable:1},Count:1}],HandItems:[{id:"stone_sword",tag:{Unbreakable:1},Count:1},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],Attributes:[{Name:"generic.movement_speed",Base:0.3d},{Name:"generic.follow_range",Base:60}],PersistenceRequired:1,Silent:1,Team:"blue"}

particle instant_effect ~ ~ ~ 1 0.5 1 0.5 8 force @a
playsound entity.evoker.prepare_summon ambient @a
scoreboard players set @s Skit_cd 3600