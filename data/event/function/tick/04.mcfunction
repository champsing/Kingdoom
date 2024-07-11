#---動了就會死---
execute store result score @s event_x2 run data get entity @s Pos[0] 100
execute store result score @s event_y2 run data get entity @s Pos[1] 100
execute store result score @s event_z2 run data get entity @s Pos[2] 100

execute unless score @s event_x = @s event_x2 run function event:success/04
execute unless score @s event_y = @s event_y2 run function event:success/04
execute unless score @s event_z = @s event_z2 run function event:success/04