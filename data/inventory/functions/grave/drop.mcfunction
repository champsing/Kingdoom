execute if entity @s[team=red] run summon villager ~ ~ ~ {DeathLootTable:"minecraft:empty",Team:"red_edit",Age:-2147483647,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Offers:{},NoGravity:1b,Invulnerable:1b,Tags:["Ginv","grave"]}
execute if entity @s[team=blue] run summon villager ~ ~ ~ {DeathLootTable:"minecraft:empty",Team:"blue_edit",Age:-2147483647,Silent:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Offers:{},NoGravity:1b,Invulnerable:1b,Tags:["Ginv","grave"]}

loot replace entity @e[type=villager,tag=grave,limit=1,distance=..0.3,sort=nearest] armor.head loot inventory:skull
data modify entity @e[type=villager,tag=grave,limit=1,distance=..0.3,sort=nearest] ArmorItems[3].tag.save set from entity @s Inventory

clear @s