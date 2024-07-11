clear @s iron_pickaxe[custom_data~{upgrade:2}]
give @s diamond_pickaxe[custom_data={upgrade:2}]
scoreboard players add @s pickaxe 1
scoreboard players remove @s money 20
xp add @s 3 points
tag @s add upgrade_success