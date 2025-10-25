execute store result score @s forge run data get entity @s UUID[0]
scoreboard players operation @s forge %= 最大值 forge

execute if score @s forge matches 0 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"stamina"},"minecraft:lore":[{"text":"§a能量 I"},{"text":"§a攻擊後有20%機率回復1%體力"}]}
execute if score @s forge matches 1 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"poison"},"minecraft:lore":[{"text":"§a劇毒 I"},{"text":"§a攻擊後有20%機率產生劇毒效果"}]}
execute if score @s forge matches 2 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"glowing"},"minecraft:lore":[{"text":"§a發光 I"},{"text":"§a攻擊後有20%機率產生發光效果"}]}
execute if score @s forge matches 3 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"leeching"},"minecraft:lore":[{"text":"§a吸血 I"},{"text":"§a攻擊後有20%機率獲得立即治療效果"}]}
execute if score @s forge matches 4 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"hunger"},"minecraft:lore":[{"text":"§a飢餓 I"},{"text":"§a攻擊後有20%機率產生飢餓效果"}]}
execute if score @s forge matches 5 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"weakness"},"minecraft:lore":[{"text":"§a虛弱 I"},{"text":"§a攻擊後有20%機率產生虛弱效果"}]}
execute if score @s forge matches 6 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"wither"},"minecraft:lore":[{"text":"§a凋零 I"},{"text":"§a攻擊後有20%機率產生凋零效果"}]}
execute if score @s forge matches 7 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"chain"},"minecraft:lore":[{"text":"§a連鎖 I"},{"text":"§a攻擊後有20%機率對附近敵人造成傷害"}]}
execute if score @s forge matches 8 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"critical"},"minecraft:lore":[{"text":"§a重擊 I"},{"text":"§a攻擊後有20%機率造成額外傷害"}]}
execute if score @s forge matches 9 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"stunning"},"minecraft:lore":[{"text":"§a震懾 I"},{"text":"§a攻擊後有20%機率產生緩速效果"}]}
execute if score @s forge matches 10 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"gravity"},"minecraft:lore":[{"text":"§a引力 I"},{"text":"§a攻擊後有20%機率將敵人拉過來"}]}
execute if score @s forge matches 11 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"explode"},"minecraft:lore":[{"text":"§a爆破 I"},{"text":"§a殺死玩家後有25%機率召喚TNT"}]}
execute if score @s forge matches 12 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"rampaging"},"minecraft:lore":[{"text":"§a肆虐 I"},{"text":"§a殺死玩家後有25%機率獲得力量效果"}]}
execute if score @s forge matches 13 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"soul"},"minecraft:lore":[{"text":"§a招魂 I"},{"text":"§a殺死玩家後有25%機率吸收1個靈魂"}]}
execute if score @s forge matches 14 run data modify entity @s equipment.mainhand.components merge value {"minecraft:custom_data":{ForgeAttack:1,ForgeEffect:"looting"},"minecraft:lore":[{"text":"§a聚寶 I"},{"text":"§a殺死玩家後有25%機率掉落隨機物品"}]}
execute if score @s forge matches 15 run data modify entity @s equipment.mainhand.components merge value {"minecraft:lore":[{"text":"§a速斬 I"},{"text":"§a拿在主手增加0.5攻擊速度"}],"minecraft:custom_data":{ForgeEffect:"slash"}}
execute if score @s forge matches 15 store result score 攻擊速度 forge run data get entity @s equipment.mainhand.components.minecraft:attribute_modifiers[{type:"minecraft:attack_speed"}].amount 10
execute if score @s forge matches 15 run scoreboard players add 攻擊速度 forge 5
execute if score @s forge matches 15 store result entity @s equipment.mainhand.components.minecraft:attribute_modifiers[{type:"minecraft:attack_speed"}].amount double 0.1 run scoreboard players get 攻擊速度 forge
execute if score @s forge matches 16 run data modify entity @s equipment.mainhand.components merge value {"minecraft:lore":[{"text":"§a延壽 I"},{"text":"§a拿在主手增加25%生命值"}],"minecraft:custom_data":{ForgeEffect:"health"}}
execute if score @s forge matches 16 run data modify entity @s equipment.mainhand.components.minecraft:attribute_modifiers append value {type:"minecraft:max_health",amount:0.25,operation:"add_multiplied_base",id:"ffffffff-ffff-ffff-ffff-ffffffffffff",slot:"mainhand"}
execute if score @s forge matches 17 run data modify entity @s equipment.mainhand.components merge value {"minecraft:lore":[{"text":"§a防禦 I"},{"text":"§a拿在主手增加2防禦值"}],"minecraft:custom_data":{ForgeEffect:"defense"}}
execute if score @s forge matches 17 run data modify entity @s equipment.mainhand.components.minecraft:attribute_modifiers append value {type:"minecraft:armor",amount:2,operation:"add_value",id:"ffffffff-ffff-ffff-ffff-ffffffffffff",slot:"mainhand"}
execute if score @s forge matches 18 run data modify entity @s equipment.mainhand.components merge value {"minecraft:lore":[{"text":"§a鋒利 I"},{"text":"§a拿在主手增加1攻擊傷害"}],"minecraft:custom_data":{ForgeEffect:"sharpness"}}
execute if score @s forge matches 18 store result score 攻擊力 forge run data get entity @s equipment.mainhand.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage"}].amount
execute if score @s forge matches 18 run scoreboard players add 攻擊力 forge 1
execute if score @s forge matches 18 store result entity @s equipment.mainhand.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage"}].amount double 1 run scoreboard players get 攻擊力 forge
execute if score @s forge matches 19 run data modify entity @s equipment.mainhand.components merge value {"minecraft:lore":[{"text":"§a輕盈 I"},{"text":"§a拿在主手增加20%移動速度"}],"minecraft:custom_data":{ForgeEffect:"speed"}}
execute if score @s forge matches 19 run data modify entity @s equipment.mainhand.components.minecraft:attribute_modifiers append value {type:"minecraft:movement_speed",amount:0.2,operation:"add_multiplied_base",id:"ffffffff-ffff-ffff-ffff-ffffffffffff",slot:"mainhand"}

data modify entity @s equipment.mainhand.components merge value {"minecraft:repair_cost":99,"minecraft:enchantments":{"minecraft:binding_curse":1},tooltip_display:{hidden_components:["enchantments"]},"minecraft:custom_data":{NoGrind:1b,forge:1}}
scoreboard players reset @s forge
tag @s add forge_success
particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.3 25 force @a[distance=..3]
playsound block.beacon.power_select ambient @a[distance=..3] ~ ~ ~ 1 2