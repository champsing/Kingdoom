#---開始---
gamerule doDaylightCycle true
gamerule fallDamage true
gamerule reducedDebugInfo true

#---效果---
clear @a
effect clear @a
effect give @a hunger 3 255 true
effect give @a regeneration 15 100 true
effect give @a night_vision infinite 0 true
effect give @a resistance 3 200 true
effect give @a[team=red,tag=Rking] health_boost infinite 4 true
effect give @a[team=blue,tag=Bking] health_boost infinite 4 true

give @a[team=!spec] wooden_sword[attribute_modifiers=[{type:"attack_damage",amount:3,operation:"add_value",id:"ffffffff-ffff-ffff-ffff-ffffffffffff",slot:"mainhand"},{type:"attack_speed",amount:-2.4d,operation:"add_value",id:"ffffffff-ffff-ffff-ffff-ffffffffffff",slot:"mainhand"}],custom_data={upgrade:2,forge:0}]
give @a[team=!spec] wooden_axe[attribute_modifiers=[{type:"attack_damage",amount:6,operation:"add_value",id:"ffffffff-ffff-ffff-ffff-ffffffffffff",slot:"mainhand"},{type:"attack_speed",amount:-3.2d,operation:"add_value",id:"ffffffff-ffff-ffff-ffff-ffffffffffff",slot:"mainhand"}],custom_data={upgrade:2,forge:0}]
give @a[team=!spec] stone_pickaxe[unbreakable={show_in_tooltip:0b},custom_data={upgrade:2}]
give @a[team=!spec] cooked_beef[lore=[{"text":"§7補充2%體力"}]] 5 
execute as @a[tag=Rking] run function death:king
execute as @a[tag=Bking] run function death:king
scoreboard players enable @a[tag=Rking] sorcery
scoreboard players enable @a[tag=Bking] sorcery
execute if entity @a[team=red,tag=Rspy] as @a[team=red,tag=Rking] run function spy:book
execute if entity @a[team=blue,tag=Bspy] as @a[team=blue,tag=Bking] run function spy:book

#---通知---
title @a title {"text":"START","bold":true,"color":"gold"}

schedule function game:time 1s
schedule function game:daynight 600s
schedule function game:period 300s
schedule function stamina:regain 10s
schedule function event:start 600s

execute if score 遊戲模式 menu matches 2 run schedule function game:treasure 600s
execute if score 好感系統 menu matches 0 run function favorability:root