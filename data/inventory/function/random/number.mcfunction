execute store result score @s Rinv_number run data get entity @s UUID[0]
scoreboard players operation @s Rinv_number %= 最大值 Rinv_number

execute if score @s Rinv_number < Rinv setting run scoreboard players set 噴裝 list2 1
execute if score @s Rinv_number >= Rinv setting run kill @s

scoreboard players reset @s Rinv_number