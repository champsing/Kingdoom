#---抗擊---
tag @s add Dkit04
attribute @s generic.knockback_resistance base set 1
particle composter ~ ~2 ~ 0.1 0.1 0.1 0 5 force @a
playsound entity.player.attack.crit ambient @a
scoreboard players set @s Dkit_cd 3600