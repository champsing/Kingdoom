scoreboard players operation @s sizex2 = @s sizex
scoreboard players operation @s sizey2 = @s sizey
scoreboard players operation @s sizez2 = @s sizez

scoreboard players set @s build_score 0

execute if data entity @s ArmorItems[1].components run data modify storage build:number number prepend from entity @s ArmorItems[1].components

setblock ~ ~ ~ structure_block[mode=save]{ignoreEntities:1b,mode:"SAVE",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showair:0b,showboundingbox:1b}
data modify block ~ ~ ~ name set from storage build:number number[0].minecraft:custom_data.name
data remove storage build:number number[0]
data modify entity @s ArmorItems[1].components.minecraft:custom_data.name set from block ~ ~ ~ name
execute store result block ~ ~ ~ posX int 1 run scoreboard players get relx build
execute store result block ~ ~ ~ posY int 1 run scoreboard players get rely build
execute store result block ~ ~ ~ posZ int 1 run scoreboard players get relz build
execute store result block ~ ~ ~ sizeX int 1 run scoreboard players get @s sizex
execute store result block ~ ~ ~ sizeY int 1 run scoreboard players get @s sizey
execute store result block ~ ~ ~ sizeZ int 1 run scoreboard players get @s sizez
setblock ~ ~1 ~ redstone_block

tag @s add build_name