#---咆哮---
tag @s add Akit02
effect give @a[distance=..5,tag=!Akit02] poison 7 3
tag @s remove Akit02
particle dragon_breath ^ ^ ^1 0.2 0.2 0.2 0.1 6 force @a
playsound entity.ender_dragon.ambient ambient @a
scoreboard players set @s Akit_cd 3000