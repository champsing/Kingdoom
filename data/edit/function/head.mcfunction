execute if data entity @s[tag=edit] ArmorItems[3].components.minecraft:custom_data.delete run function edit:delete
execute if data entity @s[tag=team] ArmorItems[3].components.minecraft:custom_data.team run function edit:team
execute if data entity @s[tag=align] ArmorItems[3].components.minecraft:custom_data.align run function edit:align

data remove entity @s ArmorItems[3]