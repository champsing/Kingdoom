execute store result score @s lottery run data get entity @s UUID[0]
scoreboard players operation @s lottery %= 最大值 lottery

execute if score @s lottery matches 0..11 run function lottery:small
execute if score @s lottery matches 12..17 run function lottery:medium
execute if score @s lottery matches 18..19 run function lottery:large

kill @s