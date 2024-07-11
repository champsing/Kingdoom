#---狙擊---
execute store result score @s event_crossbow run data get entity @s damage 20
execute store result entity @s damage double 0.1 run scoreboard players get @s event_crossbow
tag @s add event20