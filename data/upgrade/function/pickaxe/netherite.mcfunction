clear @s diamond_pickaxe[custom_data~{upgrade:2}]
give @s netherite_pickaxe[enchantments={"minecraft:efficiency":2},custom_data={upgrade:2}]
scoreboard players add @s pickaxe 1
scoreboard players remove @s money 30
xp add @s 4 points
tag @s add upgrade_success