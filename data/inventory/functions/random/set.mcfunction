data modify entity @s Item set from entity @s Item.tag.drop
execute as @s[nbt={Item:{tag:{upgrade:2}}}] unless data entity @s Item.tag.Enchantments run kill @s
kill @s[nbt={Item:{id:"minecraft:netherite_pickaxe",tag:{upgrade:2,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}}}]