clear @s leather_boots[custom_data~{upgrade:2}]
clear @s leather_leggings[custom_data~{upgrade:2}]
clear @s leather_chestplate[custom_data~{upgrade:2}]
clear @s leather_helmet[custom_data~{upgrade:2}]
item replace entity @s armor.feet with chainmail_boots[custom_data={upgrade:2}]
item replace entity @s armor.legs with chainmail_leggings[custom_data={upgrade:2}]
execute unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run item replace entity @s armor.chest with chainmail_chestplate[custom_data={upgrade:2}]
give @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] chainmail_chestplate[custom_data={upgrade:2}]
item replace entity @s[tag=!Rking,tag=!Bking,tag=!Rgem_player,tag=!Bgem_player] armor.head with chainmail_helmet[custom_data={upgrade:2}]
scoreboard players add @s armor 1
scoreboard players remove @s money 20
xp add @s 3 points
tag @s add upgrade_success