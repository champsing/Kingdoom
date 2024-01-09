execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"stamina"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a能量 III"}','{"text":"§a攻擊後有60%機率回復1%體力"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"poison"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a劇毒 III"}','{"text":"§a攻擊後有60%機率產生劇毒效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"glowing"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a發光 III"}','{"text":"§a攻擊後有60%機率產生發光效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"leeching"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a吸血 III"}','{"text":"§a攻擊後有60%機率獲得立即治療效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"hunger"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a飢餓 III"}','{"text":"§a攻擊後有60%機率產生飢餓效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"weakness"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a虛弱 III"}','{"text":"§a攻擊後有60%機率產生虛弱效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"wither"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a凋零 III"}','{"text":"§a攻擊後有60%機率產生凋零效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"chain"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a連鎖 III"}','{"text":"§a攻擊後有60%機率對附近敵人造成傷害"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"critical"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a重擊 III"}','{"text":"§a攻擊後有60%機率造成額外傷害"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"stunning"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a震懾 III"}','{"text":"§a攻擊後有60%機率產生緩速效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"gravity"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a引力 III"}','{"text":"§a攻擊後有60%機率將敵人拉過來"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"explode"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a爆破 III"}','{"text":"§a殺死玩家後有75%機率召喚TNT"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"rampaging"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a肆虐 III"}','{"text":"§a殺死玩家後有75%機率獲得力量效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"soul"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a招魂 III"}','{"text":"§a殺死玩家後有75%機率吸收1個靈魂"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"looting"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a聚寶 III"}','{"text":"§a殺死玩家後有75%機率掉落隨機物品"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"slash"}}]}] run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a速斬 III"}','{"text":"§a拿在主手增加1.5攻擊速度"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"slash"}}]}] store result score 攻擊速度 forge run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.attack_speed"}].Amount 10
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"slash"}}]}] run scoreboard players add 攻擊速度 forge 5
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"slash"}}]}] store result entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.attack_speed"}].Amount double 0.1 run scoreboard players get 攻擊速度 forge
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"health"}}]}] run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a延壽 III"}','{"text":"§a拿在主手增加75%生命值"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"health"}}]}] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.max_health"}].Amount set value 0.75
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"defense"}}]}] run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a防禦 III"}','{"text":"§a拿在主手增加6防禦值"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"defense"}}]}] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.armor"}].Amount set value 6
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"sharpness"}}]}] run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a鋒利 III"}','{"text":"§a拿在主手增加3攻擊傷害"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"sharpness"}}]}] store result score 攻擊力 forge run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"sharpness"}}]}] run scoreboard players add 攻擊力 forge 1
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"sharpness"}}]}] store result entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount double 1 run scoreboard players get 攻擊力 forge
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"speed"}}]}] run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a輕盈 III"}','{"text":"§a拿在主手增加40%移動速度"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"speed"}}]}] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.movement_speed"}].Amount set value 0.4

data modify entity @s HandItems[0].tag.forge set value 3
tag @s add forge_success
particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.3 25 force @a[distance=..3]
playsound block.beacon.power_select ambient @a[distance=..3] ~ ~ ~ 1 2