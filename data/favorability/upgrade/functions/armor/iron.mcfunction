clear @s chainmail_boots{upgrade:2}
clear @s chainmail_leggings{upgrade:2}
clear @s chainmail_chestplate{upgrade:2}
clear @s chainmail_helmet{upgrade:2}
item replace entity @s armor.feet with iron_boots{upgrade:2}
item replace entity @s armor.legs with iron_leggings{upgrade:2}
execute unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run item replace entity @s armor.chest with iron_chestplate{upgrade:2}
give @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] iron_chestplate{upgrade:2}
item replace entity @s[tag=!Rking,tag=!Bking,tag=!Rgem_player,tag=!Bgem_player] armor.head with iron_helmet{upgrade:2}
scoreboard players add @s armor 1
scoreboard players remove @s money 30
xp add @s 4 points
tag @s add upgrade_success