setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD"}
data modify block ~ ~ ~ name set from entity @s ArmorItems[1].tag.name
setblock ~ ~1 ~ redstone_block
scoreboard players reset @s build_cd