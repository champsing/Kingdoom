#---治愈---
effect give @s regeneration 9 0
effect give @s instant_health 2 1 true
particle heart ~ ~2 ~ 0 0 0 0 3 force @a
playsound item.bucket.fill ambient @a
scoreboard players set @s Dkit_cd 3600