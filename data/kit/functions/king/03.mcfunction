#---援兵---
execute if entity @s[team=red] run tag @r[team=red,tag=!Rking] add Kkit03
execute if entity @s[team=blue] run tag @r[team=blue,tag=!Bking] add Kkit03
tp @a[tag=Kkit03] @s
tellraw @a[tag=Kkit03] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你被"},{"text":"國王","color":"gold"},{"text":"強制傳送過來了"}]
tag @a[tag=Kkit03] remove Kkit03
particle bubble_pop ~ ~1 ~ 0.1 0.1 0.1 0.3 4 force @a
playsound entity.iron_golem.death ambient @a ~ ~ ~ 1 2
scoreboard players set @s Kkit_cd 3600