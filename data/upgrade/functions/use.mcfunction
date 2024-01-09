execute store success score @s armor_upgrade run clear @s diamond_chestplate{upgrade:1}
execute store success score @s sword_upgrade run clear @s diamond_sword{upgrade:1}
execute store success score @s axe_upgrade run clear @s diamond_axe{upgrade:1}
execute store success score @s pickaxe_upgrade run clear @s diamond_pickaxe{upgrade:1}
execute store success score @s forge_upgrade run clear @s anvil{upgrade:1}
execute store success score @s slave_upgrade run clear @s armor_stand{upgrade:1}
execute store success score @s chest_upgrade run clear @s chest{upgrade:1}
execute store success score @s guardian_upgrade run clear @s shield{upgrade:1}

execute if score @s armor_upgrade matches 1 at @s run function upgrade:armor
execute if score @s sword_upgrade matches 1 at @s run function upgrade:sword
execute if score @s axe_upgrade matches 1 at @s run function upgrade:axe
execute if score @s pickaxe_upgrade matches 1 at @s run function upgrade:pickaxe
execute if score @s forge_upgrade matches 1 at @s run function upgrade:forge
execute if score @s slave_upgrade matches 1 at @s run function upgrade:slave
execute if score @s chest_upgrade matches 1 at @s run function upgrade:chest
execute if score @s guardian_upgrade matches 1 at @s run function upgrade:guardian

tag @s[tag=upgrade_success] remove upgrade_success