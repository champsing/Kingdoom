clear @s iron_sword[custom_data~{upgrade:2}]
give @s diamond_sword[attribute_modifiers=[{type:"generic.attack_damage",amount:6,operation:"add_value",id:"ffffffff-ffff-ffff-ffff-ffffffffffff",slot:"mainhand"},{type:"generic.attack_speed",amount:-2.4d,operation:"add_value",id:"ffffffff-ffff-ffff-ffff-ffffffffffff",slot:"mainhand"}],custom_data={upgrade:2,forge:0}]
scoreboard players add @s sword 1
scoreboard players remove @s money 30
xp add @s 4 points
tag @s add upgrade_success