#---保衛---
execute if entity @s[team=red] run tag @e[team=red_edit,tag=build,tag=!Kkit05,limit=1,sort=nearest] add Kkit05
execute if entity @s[team=blue] run tag @e[team=blue_edit,tag=build,tag=!Kkit05,limit=1,sort=nearest] add Kkit05

tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你保護了"},{"selector":"@e[tag=Kkit05,limit=1,type=armor_stand]"}]
execute as @e[tag=Kkit05,limit=1,type=armor_stand] at @s run function build:clone
data merge entity @e[tag=Kkit05,limit=1,type=armor_stand] {PortalCooldown:1200}
tag @e[tag=Kkit05,limit=1,type=armor_stand] add unbreakable
tag @e[tag=Kkit05,limit=1,type=armor_stand] remove Kkit05

playsound entity.villager.work_weaponsmith ambient @a
scoreboard players set @s Kkit_cd 3600