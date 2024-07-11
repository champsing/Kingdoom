#---充能---
scoreboard players operation @s[scores={Akit_cd=1..}] Akit_cd /= 一半 list2
scoreboard players operation @s[scores={Dkit_cd=1..}] Dkit_cd /= 一半 list2
scoreboard players operation @s[scores={Skit_cd=1..}] Skit_cd /= 一半 list2
playsound entity.sheep.shear ambient @a
scoreboard players set @s Kkit_cd 3600