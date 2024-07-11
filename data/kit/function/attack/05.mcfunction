#---飛拳---
tag @s add Akit05
tag @a[distance=..5,tag=!Akit05] add Akit_fist
effect give @a[distance=..5,tag=!Akit05] levitation 1 85
tag @s remove Akit05
particle happy_villager ~ ~2 ~ 0.1 0.1 0.1 0.1 5 force @a
playsound entity.player.splash.high_speed ambient @a
scoreboard players set @s Akit_cd 3600