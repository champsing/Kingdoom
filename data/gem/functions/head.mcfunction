summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["gem_head"]}
data modify entity @e[type=item,limit=1,distance=..0.3,tag=gem_head] Item set from entity @s Inventory[{Slot:103b}]
tag @e[tag=gem_head] remove gem_head