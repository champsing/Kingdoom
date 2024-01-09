execute as @e[tag=Rtreasure_egg] at @s run function gem:red/treasure/place
execute as @e[tag=Btreasure_egg] at @s run function gem:blue/treasure/place

clear @a[tag=!Rking,tag=!Bking] allay_spawn_egg
kill @e[type=item,nbt={Item:{id:"minecraft:allay_spawn_egg"}}]
execute as @a[tag=Rking] store result score @s gem_place run clear @s allay_spawn_egg 0
execute as @a[tag=Bking] store result score @s gem_place run clear @s allay_spawn_egg 0
execute as @a[tag=Rking,tag=Rdrop,scores={gem_place=0}] at @s run function gem:red/treasure/destroy
execute as @a[tag=Bking,tag=Bdrop,scores={gem_place=0}] at @s run function gem:blue/treasure/destroy

execute as @a[tag=Rking,scores={gem_treasure=1..}] at @e[tag=Rtreasure] if block ~ ~ ~ air at @s run function gem:red/treasure/pickup
execute as @a[tag=Bking,scores={gem_treasure=1..}] at @e[tag=Btreasure] if block ~ ~ ~ air at @s run function gem:blue/treasure/pickup

execute as @e[tag=Rtreasure] at @s if block ~ ~ ~ air run function gem:red/treasure/destroy
execute as @e[tag=Btreasure] at @s if block ~ ~ ~ air run function gem:blue/treasure/destroy

scoreboard players reset @a[scores={gem_treasure=1..}] gem_treasure
kill @e[tag=treasure_shulker,nbt={PortalCooldown:0}]