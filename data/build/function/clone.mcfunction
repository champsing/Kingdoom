setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posY:0}
data modify block ~ ~ ~ name set from entity @s equipment.legs.components.minecraft:custom_data.name
setblock ~ ~1 ~ redstone_block
scoreboard players reset @s build_cd