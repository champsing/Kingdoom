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
execute if entity @s[tag=size_fail] run function edit:delete
execute if entity @s[tag=!size_fail] run function edit:build/structure