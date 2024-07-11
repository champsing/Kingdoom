#---凍結---
tag @s add Akit01
effect give @a[distance=..5,tag=!Akit01] slowness 7 3
execute at @a[distance=..5,tag=!Akit01] run particle cloud ~ ~ ~ 2 0 2 0.1 20 force @a
tag @s remove Akit01
playsound entity.ender_dragon.ambient ambient @a
scoreboard players set @s Akit_cd 3000