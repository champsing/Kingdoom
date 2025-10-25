data modify entity @s Item set from entity @s Item.components.minecraft:custom_data.drop
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{upgrade:2}}}}] unless data entity @s Item.components.minecraft:enchantments run kill @s
kill @s[nbt={Item:{id:"minecraft:netherite_pickaxe",components:{"minecraft:enchantments":{"minecraft:efficiency":2},"minecraft:custom_data":{upgrade:2}}}}]