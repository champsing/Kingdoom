item replace entity @s armor.feet with leather_boots[custom_data={upgrade:2}]
item replace entity @s armor.legs with leather_leggings[custom_data={upgrade:2}]
execute unless items entity @s armor.chest elytra run item replace entity @s armor.chest with leather_chestplate[custom_data={upgrade:2}]
execute if items entity @s armor.chest elytra run give @s leather_chestplate[custom_data={upgrade:2}]
item replace entity @s[tag=!Rking,tag=!Bking,tag=!Rgem_player,tag=!Bgem_player] armor.head with leather_helmet[custom_data={upgrade:2}]
scoreboard players add @s armor 1
scoreboard players remove @s money 10
xp add @s 2 points
tag @s add upgrade_success