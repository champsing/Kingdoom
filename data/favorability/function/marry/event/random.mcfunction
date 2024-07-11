execute store result score @s marry_event run data get entity @s UUID[0]
scoreboard players operation @s marry_event %= 最大值 marry_event

execute if score @s marry_event matches 0 run function favorability:marry/event/00
execute if score @s marry_event matches 1 run function favorability:marry/event/01
execute if score @s marry_event matches 2 run function favorability:marry/event/02
execute if score @s marry_event matches 3 run function favorability:marry/event/03
execute if score @s marry_event matches 4 run function favorability:marry/event/04

kill @s