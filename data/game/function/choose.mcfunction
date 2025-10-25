#---國王---
tag @a[tag=Rking,team=!red] remove Rking
tag @a[tag=Bking,team=!blue] remove Bking

execute unless entity @a[tag=Rking] run tag @r[team=red] add Rking
execute unless entity @a[tag=Bking] run tag @r[team=blue] add Bking

item replace entity @a[team=red,tag=Rking] armor.head with golden_helmet[custom_name={"text":"皇冠","italic":false},unbreakable={},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},tooltip_display={hidden_components:["unbreakable","enchantments"]}]
item replace entity @a[team=blue,tag=Bking] armor.head with golden_helmet[custom_name={"text":"皇冠","italic":false},unbreakable={},enchantments={"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},tooltip_display={hidden_components:["unbreakable","enchantments"]}]

bossbar set red name ["",{"text":"紅隊國王: ","color":"red"},{"selector":"@a[tag=Rking]"}]
bossbar set blue name ["",{"text":"藍隊國王: ","color":"blue"},{"selector":"@a[tag=Bking]"}]
bossbar set red players @a
bossbar set blue players @a

#---傳送---
execute as @a[team=red,tag=!Rking] run tp @s @e[tag=spawn,team=red_edit,sort=random,limit=1]
execute as @a[team=blue,tag=!Bking] run tp @s @e[tag=spawn,team=blue_edit,sort=random,limit=1]
tp @a[team=red,tag=Rking] @e[tag=kingspawn,team=red_edit,limit=1]
tp @a[team=blue,tag=Bking] @e[tag=kingspawn,team=blue_edit,limit=1]
tp @a[team=spec] @e[tag=middle,limit=1]

execute as @a[team=red] at @e[team=red_edit,tag=spawn,limit=1,sort=random] run spawnpoint @s ~ ~ ~
execute as @a[team=blue] at @e[team=blue_edit,tag=spawn,limit=1,sort=random] run spawnpoint @s ~ ~ ~

execute if score 間諜模式 menu matches 0 run function spy:choose

scoreboard players set 倒數 list2 5
schedule function game:count 20t

execute at @e[type=area_effect_cloud,tag=lobby] run fill ~-11 ~-1 ~-11 ~11 ~7 ~11 air
kill @e[type=armor_stand,tag=display]
gamemode survival @a[team=!spec]
gamemode spectator @a[team=spec]