scoreboard players operation @e[tag=stamina_arrow,limit=1] stamina_arrow += @s stamina
execute as @e[tag=stamina_arrow,limit=1] store result entity @s damage double 0.1 run scoreboard players operation @s stamina_arrow -= 箭矢體力 list2

execute if score @s stamina matches ..49 run data merge entity @e[tag=stamina_arrow,limit=1] {crit:0b}