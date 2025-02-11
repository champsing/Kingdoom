execute as @a[team=!spec] at @s if score 倒數 list2 matches 0..5 run function game:teleport
execute as @a[tag=!start] run function start:spectate
execute as @a[team=spec] at @s if entity @s[y=-120,dy=40] run tp @s @e[tag=middle,limit=1]
execute if score 遊戲時間 list matches 1.. as @a[team=!spec,tag=!Skit08] at @s run function game:border
execute as @a[scores={join=1..}] run function game:join

#---寶石---
execute if score 遊戲模式 menu matches 0 run function gem:escort
execute if score 遊戲模式 menu matches 1 run function gem:defend
execute if score 遊戲模式 menu matches 2 run function gem:treasure

#---地圖---
execute at @e[type=armor_stand,tag=enchant] if block ~ ~ ~ air run setblock ~ ~ ~ enchanting_table
execute at @e[type=armor_stand,tag=forge] if block ~ ~ ~ air run setblock ~ ~ ~ end_portal_frame
execute at @e[type=armor_stand,tag=spawn] run fill ~ ~ ~ ~ ~1 ~ air
execute at @e[type=armor_stand,tag=kingspawn] run fill ~ ~ ~ ~ ~1 ~ air
execute as @e[type=area_effect_cloud,tag=atm] at @s if block ~ ~ ~ air run function game:atm/reset
execute if entity @e[type=witch] as @e[tag=villager] at @s run function game:villager
execute unless entity @a[tag=wanted] as @a[team=!spec,scores={wanted=10..}] run function game:wanted
kill @e[type=skeleton,tag=teammate,nbt={PortalCooldown:0}]
clear @a[team=!spec] #game:clear

#---國王---
execute store result bossbar red value run scoreboard players get @a[tag=!Rdrop,tag=Rking,team=red,limit=1] health
execute store result bossbar blue value run scoreboard players get @a[tag=!Bdrop,tag=Bking,team=blue,limit=1] health
clear @a[tag=!Rking,team=red] written_book[custom_data~{KingBook:1}]
clear @a[tag=!Bking,team=blue] written_book[custom_data~{KingBook:1}]

#---體力---
execute as @a[team=!spec] if predicate stamina:consume run function stamina:consume
execute as @a[team=!spec] if predicate stamina:food run function stamina:food
execute as @a[scores={stamina_bow=1..}] at @s run function stamina:bow
execute as @a[scores={stamina_crossbow=1..}] at @s run function stamina:bow
execute as @a[team=!spec,scores={stamina=..85}] unless score @s stamina = @s stamina_attack run function stamina:attack
execute as @a[team=!spec,scores={stamina=..39}] run function stamina:effect
execute as @a[team=!spec] run title @s actionbar [{"text":"體力值: ","bold":true,"color":"aqua"},{"score":{"name":"@s","objective":"stamina"}},{"text":"%"}]
scoreboard players set @a[scores={stamina=101..}] stamina 100

#---死亡---
execute as @a[scores={death=1,health=20..}] at @s if entity @e[tag=spawn,distance=..1] run function death:effect
execute as @e[type=villager,tag=grave] at @s run function inventory:grave/save
execute as @e[type=villager,tag=Ginv,nbt={PortalCooldown:0}] at @s run function inventory:grave/item
execute as @e[type=item] at @s if data entity @s Item.components.minecraft:custom_data.drop run function inventory:random/set

#---挖礦---
execute as @a[scores={stone=1..}] at @s run function ore:stone
execute as @a[scores={iron=1..}] at @s run function ore:iron
execute as @a[scores={gold=1..}] at @s run function ore:gold
execute as @a[scores={diamond=1..}] at @s run function ore:diamond

execute as @a[scores={Dstone=1..}] at @s run function ore:stone
execute as @a[scores={Diron=1..}] at @s run function ore:iron
execute as @a[scores={Dgold=1..}] at @s run function ore:gold
execute as @a[scores={Ddiamond=1..}] at @s run function ore:diamond

execute as @a[scores={ancient_debris=1..}] at @s run function ore:ancient_debris

#---升級台---
execute at @e[type=armor_stand,tag=upgrade] if function upgrade:check_dispenser as @a[team=!spec] run function upgrade:check
execute as @e[type=armor_stand,tag=chest,team=red_edit] at @s run function upgrade:chest/red/check
execute as @e[type=armor_stand,tag=chest,team=blue_edit] at @s run function upgrade:chest/blue/check
execute as @a[team=!spec] store success score @s bag run clear @s jukebox 0
execute as @a[scores={bag=1}] run function upgrade:bag
execute as @a[team=!spec] run function upgrade:clear
execute store result score 紅隊奴隸 list2 if entity @e[tag=Rslave]
execute store result score 藍隊奴隸 list2 if entity @e[tag=Bslave]
execute store result score 紅隊守衛 list2 if entity @e[tag=Rguardian]
execute store result score 藍隊守衛 list2 if entity @e[tag=Bguardian]
execute unless score 紅隊奴隸 list2 = 紅隊奴隸 team_upgrade run function upgrade:slave/red/death
execute unless score 藍隊奴隸 list2 = 藍隊奴隸 team_upgrade run function upgrade:slave/blue/death
execute unless score 紅隊守衛 list2 = 紅隊守衛 team_upgrade run function upgrade:guardian/red/death
execute unless score 藍隊守衛 list2 = 藍隊守衛 team_upgrade run function upgrade:guardian/blue/death

#---鍛造---
execute at @e[tag=forge] if block ~ ~ ~ end_portal_frame[eye=true] unless entity @e[type=armor_stand,tag=forge_sword,distance=..0.5,limit=1] run summon armor_stand ~-0.22 ~0.2 ~0.05 {Tags:["forge_sword"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ShowArms:1b,DisabledSlots:62,Pose:{RightArm:[81f,90f,0f]}}
execute at @e[tag=forge,team=red_edit] if block ~ ~ ~ end_portal_frame[eye=true] as @e[type=armor_stand,tag=forge_sword,tag=!forge_success,distance=..0.5,limit=1] if data entity @s HandItems[0].components.minecraft:custom_data.forge unless entity @s[nbt={HandItems:[{components:{"minecraft:custom_data":{forge:3}}}]}] run function forge:success_red
execute at @e[tag=forge,team=blue_edit] if block ~ ~ ~ end_portal_frame[eye=true] as @e[type=armor_stand,tag=forge_sword,tag=!forge_success,distance=..0.5,limit=1] if data entity @s HandItems[0].components.minecraft:custom_data.forge unless entity @s[nbt={HandItems:[{components:{"minecraft:custom_data":{forge:3}}}]}] run function forge:success_blue
execute as @e[type=armor_stand,tag=forge_success] at @s unless data entity @s HandItems[0].id run function forge:success
clear @a[team=!spec] #upgrade:weapon[repair_cost=1,custom_data~{NoGrind:1b}]

#---技能---
execute as @a[scores={kit=1..}] at @s run function kit:check
execute as @a[team=!spec] store success score @s kit_book run clear @s knowledge_book 0
execute as @a[scores={kit_book=1}] run function kit:clear
execute as @a[tag=Akit03] at @s run function kit:end/a03
execute as @a[tag=Akit_fist] at @s run function kit:end/a05
execute as @a[tag=Akit06] at @s run function kit:end/a06
execute as @a[tag=Akit07] at @s run function kit:end/a07
execute as @e[type=arrow,tag=Akit07_arrow,nbt={PortalCooldown:0}] run kill @s
execute as @a[tag=Dkit04] at @s run function kit:end/d04
execute as @a[tag=Dkit05] at @s run function kit:end/d05
execute as @a[tag=Dkit06] at @s run function kit:end/d06
execute as @a[tag=Skit04] at @s run function kit:end/s04
execute as @a[tag=Skit06] at @s run function kit:end/s06
execute as @e[type=area_effect_cloud,tag=Skit08_soul,nbt={PortalCooldown:0}] at @s run function kit:end/s08
execute as @a[scores={Akit_cd=1..}] at @s run function kit:attack/cooldown
execute as @a[scores={Dkit_cd=1..}] at @s run function kit:defense/cooldown
execute as @a[scores={Skit_cd=1..}] at @s run function kit:support/cooldown
execute as @a[scores={Kkit_cd=1..}] at @s run function kit:king/cooldown

#---建築---
execute as @e[type=armor_stand,tag=build] at @s if score @s sizey matches 1 if block ~ ~1 ~ redstone_block run setblock ~ ~1 ~ air
execute as @e[type=armor_stand,tag=build,tag=!unbreakable] at @s unless score @s build_cd matches 0.. run function build:check
scoreboard players remove @e[type=armor_stand,tag=build,scores={build_cd=1..}] build_cd 1
execute as @e[type=armor_stand,tag=build,tag=unbreakable,nbt={PortalCooldown:0}] run tag @s remove unbreakable
execute as @e[type=armor_stand,tag=build,scores={build_cd=0}] at @s run function build:clone

#---靈魂---
execute as @a[team=red,scores={sorcery=1..},tag=Rking] at @s run function sorcery:red
execute as @a[team=blue,scores={sorcery=1..},tag=Bking] at @s run function sorcery:blue

#---抽獎---
execute as @a[scores={lottery=1..}] at @s run function lottery:use

#---任務---
execute if score 任務倒數 list2 matches 1.. run function event:tick
execute as @a[team=!spec] if predicate event:15 run function event:success/15
execute as @a[tag=event15] at @s run function event:tick/15

#---爆破物---
execute at @e[type=egg] run fill ~1 ~1 ~1 ~-1 ~ ~-1 fire keep
execute as @e[type=chicken] at @s run tp @s ~ ~-999 ~
execute at @e[type=snowball] run kill @n[type=area_effect_cloud,tag=grenade_cloud,limit=1]
execute as @e[type=area_effect_cloud,tag=grenade_cloud] at @s run function bomb:grenade/summon
execute as @e[type=snowball] at @s run function bomb:grenade/path
execute as @e[type=item,tag=grenade,nbt={PortalCooldown:0}] at @s run function bomb:grenade/explode
execute as @e[type=armor_stand,tag=landmine_point] at @s run function bomb:landmine/summon
execute as @e[type=armor_stand,tag=landmine,nbt={PortalCooldown:0}] at @s at @a[distance=..1,team=!spec,gamemode=survival] run function bomb:landmine/explode
execute as @e[type=arrow,nbt={inGround:1b}] at @s if data entity @s item.components.minecraft:potion_contents.potion run function bomb:arrow

#---間諜---
execute as @a[scores={click=1}] at @s run function spy:vote
execute as @a[team=red,scores={Rclick=1..}] at @s run function spy:red/click
execute as @a[team=blue,scores={Bclick=1..}] at @s run function spy:blue/click
execute as @a[tag=Rking,scores={vote=1}] at @s run function spy:red/total
execute as @a[tag=Bking,scores={vote=1}] at @s run function spy:blue/total
execute as @a[team=red,scores={spy=0..}] at @s run function spy:red/mission/tick
execute as @a[team=blue,scores={spy=0..}] at @s run function spy:blue/mission/tick
clear @a[tag=!vote] written_book[custom_data~{book:"spy"}]

#---好感度---
execute if score 好感系統 menu matches 0 run function favorability:tick

#---分數限制---
execute if score 時段 list2 matches 0..3 if score 紅隊分數 list > 第一天限制分數 menu run scoreboard players operation 紅隊分數 list = 第一天限制分數 menu
execute if score 時段 list2 matches 0..3 if score 藍隊分數 list > 第一天限制分數 menu run scoreboard players operation 藍隊分數 list = 第一天限制分數 menu
execute if score 時段 list2 matches 4..7 if score 紅隊分數 list > 第二天限制分數 menu run scoreboard players operation 紅隊分數 list = 第二天限制分數 menu
execute if score 時段 list2 matches 4..7 if score 藍隊分數 list > 第二天限制分數 menu run scoreboard players operation 藍隊分數 list = 第二天限制分數 menu

#---結算---
execute if score 紅隊分數 list >= 目標分數 menu run function game:end/red
execute if score 藍隊分數 list >= 目標分數 menu run function game:end/blue