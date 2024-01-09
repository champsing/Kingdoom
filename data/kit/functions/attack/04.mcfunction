#---狂暴---
effect give @s strength 8 1
effect give @s glowing 8 0 true
particle angry_villager ~ ~2 ~ 0.1 0.1 0.1 0.1 5 force @a
playsound entity.wither.death ambient @s
scoreboard players set @s Akit_cd 3600