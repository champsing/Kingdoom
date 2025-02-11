clear @s iron_axe[custom_data~{upgrade:2}]
give @s diamond_axe[attribute_modifiers=[{type:"attack_damage",amount:8,operation:"add_value",id:"ffffffff-ffff-ffff-ffff-ffffffffffff",slot:"mainhand"},{type:"attack_speed",amount:-3,operation:"add_value",id:"ffffffff-ffff-ffff-ffff-ffffffffffff",slot:"mainhand"}],custom_data={upgrade:2,forge:0}]
scoreboard players add @s axe 1
scoreboard players remove @s money 30
xp add @s 4 points
tag @s add upgrade_success