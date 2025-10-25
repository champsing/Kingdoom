execute store result score relx build run data get entity @s Pos[0]
execute store result score rely build run data get entity @s Pos[1]
execute store result score relz build run data get entity @s Pos[2]
scoreboard players operation @s sizex = relx build
scoreboard players operation @s sizey = rely build
scoreboard players operation @s sizez = relz build

scoreboard players operation @s curx = disx build
scoreboard players operation @s cury = disy build
scoreboard players operation @s curz = disz build
scoreboard players operation @s curx < @s sizex
scoreboard players operation @s cury < @s sizey
scoreboard players operation @s curz < @s sizez
scoreboard players add @s curx 1
scoreboard players add @s cury 1
scoreboard players add @s curz 1
scoreboard players operation relx build -= @s curx
scoreboard players operation rely build -= @s cury
scoreboard players operation relz build -= @s curz
scoreboard players operation relx build *= 負數 list2
scoreboard players operation rely build *= 負數 list2
scoreboard players operation relz build *= 負數 list2

scoreboard players operation @s sizex -= disx build
scoreboard players operation @s sizey -= disy build
scoreboard players operation @s sizez -= disz build
execute if score @s sizex matches ..-1 run scoreboard players operation @s sizex *= 負數 list2
execute if score @s sizey matches ..-1 run scoreboard players operation @s sizey *= 負數 list2
execute if score @s sizez matches ..-1 run scoreboard players operation @s sizez *= 負數 list2
scoreboard players remove @s sizex 1
scoreboard players remove @s sizey 1
scoreboard players remove @s sizez 1

execute if score @s sizex matches ..0 run tag @s add size_fail
execute if score @s sizey matches ..0 run tag @s add size_fail
execute if score @s sizez matches ..0 run tag @s add size_fail
execute if score @s sizex matches 49.. run tag @s add size_fail
execute if score @s sizey matches 49.. run tag @s add size_fail
execute if score @s sizez matches 49.. run tag @s add size_fail

execute if entity @s[tag=size_fail] run tellraw @p ["",{"text":">> ","bold":true,"color":"gold"},{"text":"建築物設定"},{"text":"失敗","color":"gold"},{"text":", 建築物大小不符合"}]
execute if entity @s[tag=size_fail] run return run function edit:delete

scoreboard players operation @s sizex2 = @s sizex
scoreboard players operation @s sizey2 = @s sizey
scoreboard players operation @s sizez2 = @s sizez
scoreboard players set @s build_score 0
execute if data entity @s equipment.legs.components.minecraft:custom_data.name run data modify storage build:number number prepend from entity @s equipment.legs.components.minecraft:custom_data.name
setblock ~ ~ ~ structure_block[mode=save]{ignoreEntities:1b,mode:"SAVE",posX:0,posY:0,posZ:0,sizeX:0,sizeY:0,sizeZ:0,showair:0b,showboundingbox:1b}

data modify block ~ ~ ~ name set from storage build:number number[0].name
data remove storage build:number number[0]
data modify entity @s equipment.legs.components.minecraft:custom_data.name set from block ~ ~ ~ name

execute store result block ~ ~ ~ posX int 1 run scoreboard players get relx build
execute store result block ~ ~ ~ posY int 1 run scoreboard players get rely build
execute store result block ~ ~ ~ posZ int 1 run scoreboard players get relz build
execute store result block ~ ~ ~ sizeX int 1 run scoreboard players get @s sizex
execute store result block ~ ~ ~ sizeY int 1 run scoreboard players get @s sizey
execute store result block ~ ~ ~ sizeZ int 1 run scoreboard players get @s sizez
setblock ~ ~1 ~ redstone_block
tag @s add build_name