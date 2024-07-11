#---轉移---
playsound entity.enderman.teleport ambient @a
scoreboard players set @s Kkit_cd 3600

execute if entity @s[team=red] run tag @p[team=blue,distance=..20] add Kkit04
execute if entity @s[team=blue] run tag @p[team=red,distance=..20] add Kkit04

execute unless entity @a[tag=Kkit04] run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你的20格內沒有"},{"text":"敵人","color":"gold"}]
execute unless entity @a[tag=Kkit04] run scoreboard players set @s Kkit_cd 1

summon armor_stand ~ ~ ~ {Tags:[Kkit04_point,Kkit04_king],Invisible:1,Invulnerable:1}
execute at @a[tag=Kkit04] run summon armor_stand ~ ~ ~ {Tags:[Kkit04_point,Kkit04_enemy],Invisible:1,Invulnerable:1}
tp @e[type=armor_stand,tag=Kkit04_king,limit=1] @s
tp @e[type=armor_stand,tag=Kkit04_enemy,limit=1] @a[tag=Kkit04,limit=1]
tp @s @e[type=armor_stand,tag=Kkit04_enemy,limit=1]
tp @a[tag=Kkit04,limit=1] @e[type=armor_stand,tag=Kkit04_king,limit=1]

execute at @e[tag=Kkit04_point] run particle portal ~ ~ ~ 0.2 1 0.2 0.5 5 force @a
kill @e[tag=Kkit04_point]
tag @a[tag=Kkit04] remove Kkit04