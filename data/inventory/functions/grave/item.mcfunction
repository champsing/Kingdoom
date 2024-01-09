loot spawn ~ ~ ~ loot inventory:drop

data modify entity @e[type=item,nbt={Item:{tag:{drop:1}}},limit=1,distance=..1] Item set from entity @s ArmorItems[3].tag.save[0]
data remove entity @s ArmorItems[3].tag.save[0]

execute as @e[type=item,distance=..1,nbt={Item:{tag:{upgrade:2}}}] unless data entity @s Item.tag.Enchantments run kill @s
execute as @e[type=item,distance=..1,nbt={Item:{id:"minecraft:netherite_pickaxe",tag:{upgrade:2,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}}}] run kill @s

execute if data entity @s ArmorItems[3].tag.save[0] run function inventory:grave/item

kill @e[tag=grave_name,limit=1,sort=nearest,distance=..0.3]
kill @s