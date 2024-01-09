#---天眼---
execute if entity @s[team=blue] run effect give @a[team=red] glowing 90 1
execute if entity @s[team=red] run effect give @a[team=blue] glowing 90 1
playsound entity.zombie_villager.converted ambient @a
scoreboard players set @s Skit_cd 3600