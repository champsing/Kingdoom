loot spawn ~ ~ ~ loot inventory:drop
execute as @e[type=item,distance=..1,nbt={Item:{components:{"minecraft:custom_data":{drop:1}}}}] run function inventory:random/number