loot spawn ~ ~ ~ loot inventory:drop
execute as @e[type=item,distance=..1,nbt={Item:{tag:{drop:1}}}] run function inventory:random/number