execute store result score @s forge run data get entity @s UUID[0]
scoreboard players operation @s forge %= 最大值 forge

execute if score @s forge matches 0 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a能量 I"}','{"text":"§a攻擊後有20%機率回復1%體力"}']},ForgeEffect:"stamina"}
execute if score @s forge matches 1 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a劇毒 I"}','{"text":"§a攻擊後有20%機率產生劇毒效果"}']},ForgeEffect:"poison"}
execute if score @s forge matches 2 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a發光 I"}','{"text":"§a攻擊後有20%機率產生發光效果"}']},ForgeEffect:"glowing"}
execute if score @s forge matches 3 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a吸血 I"}','{"text":"§a攻擊後有20%機率獲得立即治療效果"}']},ForgeEffect:"leeching"}
execute if score @s forge matches 4 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a飢餓 I"}','{"text":"§a攻擊後有20%機率產生飢餓效果"}']},ForgeEffect:"hunger"}
execute if score @s forge matches 5 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a虛弱 I"}','{"text":"§a攻擊後有20%機率產生虛弱效果"}']},ForgeEffect:"weakness"}
execute if score @s forge matches 6 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a凋零 I"}','{"text":"§a攻擊後有20%機率產生凋零效果"}']},ForgeEffect:"wither"}
execute if score @s forge matches 7 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a連鎖 I"}','{"text":"§a攻擊後有20%機率對附近敵人造成傷害"}']},ForgeEffect:"chain"}
execute if score @s forge matches 8 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a重擊 I"}','{"text":"§a攻擊後有20%機率造成額外傷害"}']},ForgeEffect:"critical"}
execute if score @s forge matches 9 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a震懾 I"}','{"text":"§a攻擊後有20%機率產生緩速效果"}']},ForgeEffect:"stunning"}
execute if score @s forge matches 10 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a引力 I"}','{"text":"§a攻擊後有20%機率將敵人拉過來"}']},ForgeEffect:"gravity"}
execute if score @s forge matches 11 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a爆破 I"}','{"text":"§a殺死玩家後有25%機率召喚TNT"}']},ForgeEffect:"explode"}
execute if score @s forge matches 12 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a肆虐 I"}','{"text":"§a殺死玩家後有25%機率獲得力量效果"}']},ForgeEffect:"rampaging"}
execute if score @s forge matches 13 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a招魂 I"}','{"text":"§a殺死玩家後有25%機率吸收1個靈魂"}']},ForgeEffect:"soul"}
execute if score @s forge matches 14 run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a聚寶 I"}','{"text":"§a殺死玩家後有25%機率掉落隨機物品"}']},ForgeEffect:"looting"}
execute if score @s forge matches 15 run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a速斬 I"}','{"text":"§a拿在主手增加0.5攻擊速度"}']},ForgeEffect:"slash"}
execute if score @s forge matches 15 store result score 攻擊速度 forge run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.attack_speed"}].Amount 10
execute if score @s forge matches 15 run scoreboard players add 攻擊速度 forge 5
execute if score @s forge matches 15 store result entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.attack_speed"}].Amount double 0.1 run scoreboard players get 攻擊速度 forge
execute if score @s forge matches 16 run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a延壽 I"}','{"text":"§a拿在主手增加25%生命值"}']},ForgeEffect:"health"}
execute if score @s forge matches 16 run data modify entity @s HandItems[0].tag.AttributeModifiers append value {AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.25,Operation:1,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}
execute if score @s forge matches 17 run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a防禦 I"}','{"text":"§a拿在主手增加2防禦值"}']},ForgeEffect:"defense"}
execute if score @s forge matches 17 run data modify entity @s HandItems[0].tag.AttributeModifiers append value {AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}
execute if score @s forge matches 18 run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a鋒利 I"}','{"text":"§a拿在主手增加1攻擊傷害"}']},ForgeEffect:"sharpness"}
execute if score @s forge matches 18 store result score 攻擊力 forge run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount
execute if score @s forge matches 18 run scoreboard players add 攻擊力 forge 1
execute if score @s forge matches 18 store result entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount double 1 run scoreboard players get 攻擊力 forge
execute if score @s forge matches 19 run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a輕盈 I"}','{"text":"§a拿在主手增加20%移動速度"}']},ForgeEffect:"speed"}
execute if score @s forge matches 19 run data modify entity @s HandItems[0].tag.AttributeModifiers append value {AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}

data modify entity @s HandItems[0].tag merge value {RepairCost:99,NoGrind:1b,forge:1,HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
scoreboard players reset @s forge
tag @s add forge_success
particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.3 25 force @a[distance=..3]
playsound block.beacon.power_select ambient @a[distance=..3] ~ ~ ~ 1 2