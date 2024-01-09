#---詠唱---
execute as @s[team=red] run tag @a[team=red,distance=..10] add Skit01
execute as @s[team=blue] run tag @a[team=blue,distance=..10] add Skit01
tag @s remove Skit01

execute at @a[tag=Skit01] run particle damage_indicator ~ ~1 ~ 0 0 0 0 2 force @a
effect give @a[tag=Skit01] strength 5 0
tag @a[tag=Skit01] remove Skit01
playsound block.brewing_stand.brew ambient @a
scoreboard players set @s Skit_cd 3000