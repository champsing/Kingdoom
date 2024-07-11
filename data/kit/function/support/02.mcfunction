#---吸收---
tp @e[type=item,tag=!grenade,distance=..30] @s
playsound entity.item.pickup ambient @a ~ ~ ~ 1 0
scoreboard players set @s Skit_cd 3000