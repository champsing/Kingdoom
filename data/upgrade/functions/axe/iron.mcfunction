clear @s stone_axe{upgrade:2}
give @s iron_axe{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.1,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}
scoreboard players add @s axe 1
scoreboard players remove @s money 20
xp add @s 3 points
tag @s add upgrade_success