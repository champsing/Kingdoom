clear @s stone_pickaxe[custom_data~{upgrade:2}]
give @s iron_pickaxe[unbreakable={},tooltip_display={hidden_components:["unbreakable"]},custom_data={upgrade:2}]
scoreboard players add @s pickaxe 1
scoreboard players remove @s money 10
xp add @s 2 points
tag @s add upgrade_success