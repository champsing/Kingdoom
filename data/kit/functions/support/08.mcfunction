#---出竅---
gamemode spectator @s
tag @s add Skit08
particle soul ~ ~1 ~ 0.2 0.5 0.2 0.3 6 force @a

summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["Skit08_soul"],PortalCooldown:200}
tp @e[type=area_effect_cloud,tag=Skit08_soul,limit=1,sort=nearest] @s

execute store result score @s Skit_score run scoreboard players add 出竅 list2 1
scoreboard players operation @e[type=area_effect_cloud,tag=Skit08_soul,limit=1,sort=nearest] Skit_score = @s Skit_score

playsound entity.elder_guardian.curse ambient @a ~ ~ ~ 0.5
scoreboard players set @s Skit_cd 4200