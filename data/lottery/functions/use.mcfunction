tag @s add lottery
execute as @e[type=ender_pearl,limit=1,sort=nearest] at @s run function lottery:random

tag @s remove lottery
scoreboard players reset @s lottery