#---盜竊---
tag @s add Skit07
execute as @p[team=!spec,tag=!Skit07] at @s run function kit:end/s07
tag @s remove Skit07
playsound entity.shulker.death ambient @a
scoreboard players set @s Skit_cd 3600