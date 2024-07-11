#---動了就會死---
execute store result score @s event_x run data get entity @s Pos[0] 100
execute store result score @s event_y run data get entity @s Pos[1] 100
execute store result score @s event_z run data get entity @s Pos[2] 100
effect give @s instant_damage 1 0 true
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你因為"},{"text":"移動","color":"gold"},{"text":"而受到","color":"gold"},{"text":"傷害","color":"gold"}]