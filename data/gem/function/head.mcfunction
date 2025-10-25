summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["gem_head"]}
item replace entity @e[type=item,limit=1,distance=..0.3,tag=gem_head] contents from entity @s armor.head
tag @e[tag=gem_head] remove gem_head