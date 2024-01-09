#---設定---
tag @e[type=area_effect_cloud,tag=lobby] remove edit_mode
tag @e[type=area_effect_cloud,tag=lobby] remove setting_mode
tag @e[type=area_effect_cloud,tag=lobby] add start_mode

setblock ~ ~ ~ air
team join spec @a[team=]
time set 0
clear @a
difficulty hard
gamemode survival @a
recipe take @a *
experience add @a -99999999 levels
effect give @a invisibility 9 0 true
execute as @e[tag=edit] run data merge entity @s {Marker:1b}
execute as @a at @s run playsound block.ender_chest.open ambient @s ~ ~ ~
title @s times 10 40 10
title @a title {"text":"亡國之戰 II","bold":true,"color":"gold"}
#---記分板---
scoreboard objectives setdisplay sidebar list
scoreboard objectives setdisplay belowName health
scoreboard objectives setdisplay list money
scoreboard players reset @a
scoreboard players set @a[team=!spec] money 0
scoreboard players set @a[team=!spec] armor 0
scoreboard players set @a[team=!spec] sword 0
scoreboard players set @a[team=!spec] axe 0
scoreboard players set @a[team=!spec] pickaxe 0
scoreboard players set @a[team=!spec] stamina 100
scoreboard players enable @a[team=!spec] kit

scoreboard players operation 任務結束 list2 = 遊戲時間 menu
scoreboard players remove 任務結束 list2 301

scoreboard players add 時段 list2 0
scoreboard players set 遊戲時間 list 0
scoreboard players set 藍隊分數 list 0
scoreboard players set 紅隊分數 list 0
scoreboard players set 藍隊靈魂 list 0
scoreboard players set 紅隊靈魂 list 0
scoreboard players set 紅隊奴隸 team_upgrade 0
scoreboard players set 藍隊奴隸 team_upgrade 0
scoreboard players set 紅隊守衛 team_upgrade 0
scoreboard players set 藍隊守衛 team_upgrade 0
scoreboard players set 紅隊鍛造台 team_upgrade 0
scoreboard players set 藍隊鍛造台 team_upgrade 0
scoreboard players set 紅隊保險箱 team_upgrade 0
scoreboard players set 藍隊保險箱 team_upgrade 0
execute as @a[team=!spec] store result score @s UUID1 run data get entity @s UUID[0]
execute as @a[team=!spec] store result score @s UUID2 run data get entity @s UUID[1]
execute as @a[team=!spec] store result score @s UUID3 run data get entity @s UUID[2]
execute as @a[team=!spec] store result score @s UUID4 run data get entity @s UUID[3]

execute as @e[tag=build] run scoreboard players operation @s build_operation = @s build_score
execute as @e[tag=build] run scoreboard players operation @s build_operation *= 建築分數 menu
execute as @e[tag=build] run scoreboard players operation @s build_operation /= 一百 list2

#---地圖---
execute at @e[tag=spawn] run setblock ~ ~-1 ~ bedrock
execute at @e[tag=kingspawn] run setblock ~ ~-1 ~ bedrock
execute at @e[tag=enchant] run setblock ~ ~ ~ enchanting_table
execute at @e[tag=forge] run setblock ~ ~ ~ bedrock
execute at @e[tag=upgrade] run setblock ~ ~ ~ dispenser[facing=down]{CustomName:'{"text":"升級台"}'}
execute at @e[tag=upgrade] run setblock ~ ~1 ~ air
execute at @e[tag=ancient_debris] run setblock ~ ~ ~ ancient_debris
execute as @e[tag=build] at @s run function build:clone
execute as @e[tag=villager] at @s run function game:villager
execute at @e[tag=upgrade] run data merge block ~ ~ ~ {Items:[{Slot:0b,id:"minecraft:diamond_chestplate",Count:1b,tag:{upgrade:1,HideFlags:2,display:{Name:'{"text":"升級裝備","italic":false,"color":"gold"}',Lore:['{"text":"第一級: 皮革裝備 10元","italic":false,"color":"gray"}','{"text":"第二級: 鎖鏈裝備 20元","italic":false,"color":"gray"}','{"text":"第三級: 鐵製裝備 30元","italic":false,"color":"gray"}']}}},{Slot:1b,id:"minecraft:diamond_sword",Count:1b,tag:{upgrade:1,HideFlags:2,display:{Name:'{"text":"升級劍","italic":false,"color":"gold"}',Lore:['{"text":"第一級: 石劍 10元","italic":false,"color":"gray"}','{"text":"第二級: 鐵劍 20元","italic":false,"color":"gray"}','{"text":"第三級: 鑽石劍 30元","italic":false,"color":"gray"}']}}},{Slot:2b,id:"minecraft:diamond_axe",Count:1b,tag:{upgrade:1,HideFlags:2,display:{Name:'{"text":"升級斧","italic":false,"color":"gold"}',Lore:['{"text":"第一級: 石斧 10元","italic":false,"color":"gray"}','{"text":"第二級: 鐵斧 20元","italic":false,"color":"gray"}','{"text":"第三級: 鑽石斧 30元","italic":false,"color":"gray"}']}}},{Slot:3b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{upgrade:1,HideFlags:2,display:{Name:'{"text":"升級鎬","italic":false,"color":"gold"}',Lore:['{"text":"第一級: 鐵鎬 10元","italic":false,"color":"gray"}','{"text":"第二級: 鑽石鎬 20元","italic":false,"color":"gray"}','{"text":"第三級: 獄髓鎬 30元","italic":false,"color":"gray"}']}}},{Slot:4b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{upgrade:1,display:{Name:'{"text":" "}'}}},{Slot:5b,id:"minecraft:anvil",Count:1b,tag:{upgrade:1,display:{Name:'{"text":"升級鍛造台","italic":false,"color":"gold"}',Lore:['{"text":"第一級: 可鍛造一級屬性 50元","italic":false,"color":"gray"}','{"text":"第二級: 可鍛造二級屬性 100元","italic":false,"color":"gray"}','{"text":"第三級: 可鍛造三級屬性 150元","italic":false,"color":"gray"}']}}},{Slot:6b,id:"minecraft:armor_stand",Count:1b,tag:{upgrade:1,display:{Name:'{"text":"升級奴隸","italic":false,"color":"gold"}',Lore:['{"text":"第一級: 每60秒獲得五元 50元","italic":false,"color":"gray"}','{"text":"第二級: 每40秒獲得五元 100元","italic":false,"color":"gray"}','{"text":"第三級: 每20秒獲得五元 150元","italic":false,"color":"gray"}']}}},{Slot:7b,id:"minecraft:chest",Count:1b,tag:{upgrade:1,display:{Name:'{"text":"升級保險箱","italic":false,"color":"gold"}',Lore:['{"text":"第一級: 9格空間保險箱 50元","italic":false,"color":"gray"}','{"text":"第二級: 18格空間保險箱 100元","italic":false,"color":"gray"}','{"text":"第三級: 27格空間保險箱 150元","italic":false,"color":"gray"}']}}},{Slot:8b,id:"minecraft:shield",Count:1b,tag:{upgrade:1,display:{Name:'{"text":"升級守衛","italic":false,"color":"gold"}',Lore:['{"text":"第一級: 建築物有20秒重生時間 50元","italic":false,"color":"gray"}','{"text":"第二級: 建築物有40秒重生時間 100元","italic":false,"color":"gray"}','{"text":"第三級: 建築物有60秒重生時間 150元","italic":false,"color":"gray"}']}}}]}
kill @e[tag=shulker]
#---倒數---
schedule function game:choose 45t
schedule function game:start 165t
#---標籤---
tag @a add start