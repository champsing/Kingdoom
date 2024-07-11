#---巨人---
scoreboard players add @s event_titan 1
execute if entity @s[tag=event15_cart] run tp @e[type=item,tag=!grenade,distance=..5] @s
execute if entity @s[tag=event15_colossal] run effect give @a[team=!spec,distance=..5,tag=!event15_colossal] wither 1 1 true
execute if entity @s[tag=event15_warhammer] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 diorite replace cobblestone

execute as @s[scores={event_titan=1800..}] run function event:end/15