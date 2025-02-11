tag @s add lottery
execute as @n[type=ender_pearl,limit=1] at @s run function lottery:random

tag @s remove lottery
scoreboard players reset @s lottery