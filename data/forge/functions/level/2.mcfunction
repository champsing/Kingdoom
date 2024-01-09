execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"stamina"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a能量 II"}','{"text":"§a攻擊後有40%機率回復1%體力"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"poison"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a劇毒 II"}','{"text":"§a攻擊後有40%機率產生劇毒效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"glowing"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a發光 II"}','{"text":"§a攻擊後有40%機率產生發光效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"leeching"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a吸血 II"}','{"text":"§a攻擊後有40%機率獲得立即治療效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"hunger"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a飢餓 II"}','{"text":"§a攻擊後有40%機率產生飢餓效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"weakness"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a虛弱 II"}','{"text":"§a攻擊後有40%機率產生虛弱效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"wither"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a凋零 II"}','{"text":"§a攻擊後有40%機率產生凋零效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"chain"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a連鎖 II"}','{"text":"§a攻擊後有40%機率對附近敵人造成傷害"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"critical"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a重擊 II"}','{"text":"§a攻擊後有40%機率造成額外傷害"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"stunning"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a震懾 II"}','{"text":"§a攻擊後有40%機率產生緩速效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"gravity"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a引力 II"}','{"text":"§a攻擊後有40%機率將敵人拉過來"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"explode"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a爆破 II"}','{"text":"§a殺死玩家後有50%機率召喚TNT"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"rampaging"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a肆虐 II"}','{"text":"§a殺死玩家後有50%機率獲得力量效果"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"soul"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a招魂 II"}','{"text":"§a殺死玩家後有50%機率吸收1個靈魂"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"looting"}}]}] run data modify entity @s HandItems[0].tag merge value {ForgeAttack:1,display:{Lore:['{"text":"§a聚寶 II"}','{"text":"§a殺死玩家後有50%機率掉落隨機物品"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"slash"}}]}] run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a速斬 II"}','{"text":"§a拿在主手增加1攻擊速度"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"slash"}}]}] store result score 攻擊速度 forge run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.attack_speed"}].Amount 10
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"slash"}}]}] run scoreboard players add 攻擊速度 forge 5
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"slash"}}]}] store result entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.attack_speed"}].Amount double 0.1 run scoreboard players get 攻擊速度 forge
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"health"}}]}] run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a延壽 II"}','{"text":"§a拿在主手增加50%生命值"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"health"}}]}] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.max_health"}].Amount set value 0.5
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"defense"}}]}] run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a防禦 II"}','{"text":"§a拿在主手增加4防禦值"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"defense"}}]}] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.armor"}].Amount set value 4
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"sharpness"}}]}] run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a鋒利 II"}','{"text":"§a拿在主手增加2攻擊傷害"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"sharpness"}}]}] store result score 攻擊力 forge run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"sharpness"}}]}] run scoreboard players add 攻擊力 forge 1
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"sharpness"}}]}] store result entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.attack_damage"}].Amount double 1 run scoreboard players get 攻擊力 forge
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"speed"}}]}] run data modify entity @s HandItems[0].tag merge value {display:{Lore:['{"text":"§a輕盈 II"}','{"text":"§a拿在主手增加30%移動速度"}']}}
execute if entity @s[nbt={HandItems:[{tag:{ForgeEffect:"speed"}}]}] run data modify entity @s HandItems[0].tag.AttributeModifiers[{Name:"generic.movement_speed"}].Amount set value 0.3

data modify entity @s HandItems[0].tag.forge set value 2
tag @s add forge_success
particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.3 25 force @a[distance=..3]
playsound block.beacon.power_select ambient @a[distance=..3] ~ ~ ~ 1 2