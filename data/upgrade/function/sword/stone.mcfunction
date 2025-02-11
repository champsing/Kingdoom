clear @s wooden_sword[custom_data~{upgrade:2}]
give @s stone_sword[attribute_modifiers=[{type:"attack_damage",amount:4,operation:"add_value",id:"ffffffff-ffff-ffff-ffff-ffffffffffff",slot:"mainhand"},{type:"attack_speed",amount:-2.4d,operation:"add_value",id:"ffffffff-ffff-ffff-ffff-ffffffffffff",slot:"mainhand"}],custom_data={upgrade:2,forge:0}]
scoreboard players add @s sword 1
scoreboard players remove @s money 10
xp add @s 2 points
tag @s add upgrade_success