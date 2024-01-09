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

give @a[team=!spec] wooden_sword{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}
give @a[team=!spec] stone_pickaxe{upgrade:2,HideFlags:4,Unbreakable:1b}
give @a[team=!spec] wooden_axe{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.2,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}
give @a[team=!spec] cooked_beef{display:{Lore:['{"text":"§7補充2%體力"}']}} 5 
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

execute if score 尋寶模式 menu matches 0 run schedule function game:treasure 600s
execute if score 好感系統 menu matches 0 run function favorability:root