#---動了就會死---
execute as @a[team=!spec] store result score @s event_x run data get entity @s Pos[0] 100
execute as @a[team=!spec] store result score @s event_y run data get entity @s Pos[1] 100
execute as @a[team=!spec] store result score @s event_z run data get entity @s Pos[2] 100
scoreboard players set 任務偵測 list2 4
schedule function event:end/04 12s