loot spawn ~ ~ ~ loot inventory:drop

data modify entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{drop:1}}}},limit=1,distance=..1] Item set from entity @s ArmorItems[3].components.minecraft:custom_data.save[0]
data remove entity @s ArmorItems[3].components.minecraft:custom_data.save[0]

execute as @e[type=item,distance=..1,nbt={Item:{components:{"minecraft:custom_data":{upgrade:2}}}}] unless data entity @s Item.components.minecraft:enchantments run kill @s
execute as @e[type=item,distance=..1,nbt={Item:{id:"minecraft:netherite_pickaxe",components:{"minecraft:enchantments":{levels:{"minecraft:efficiency":2}},"minecraft:custom_data":{upgrade:2}}}}] run kill @s

execute if data entity @s ArmorItems[3].components.minecraft:custom_data.save[0] run function inventory:grave/item

kill @e[tag=grave_name,limit=1,sort=nearest,distance=..0.3]
kill @s