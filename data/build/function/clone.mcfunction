setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD"}
data modify block ~ ~ ~ name set from entity @s ArmorItems[1].components.minecraft:custom_data.name
setblock ~ ~1 ~ redstone_block
scoreboard players reset @s build_cd