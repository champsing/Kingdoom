clear @s stone_pickaxe{upgrade:2}
give @s iron_pickaxe{upgrade:2,HideFlags:4,Unbreakable:1b}
scoreboard players add @s pickaxe 1
scoreboard players remove @s money 10
xp add @s 2 points
tag @s add upgrade_success