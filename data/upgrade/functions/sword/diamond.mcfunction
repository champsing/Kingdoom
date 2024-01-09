clear @s iron_sword{upgrade:2}
give @s diamond_sword{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}
scoreboard players add @s sword 1
scoreboard players remove @s money 30
xp add @s 4 points
tag @s add upgrade_success