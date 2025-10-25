execute if data entity @s[tag=edit] equipment.head.components.minecraft:custom_data.delete run function edit:delete
execute if data entity @s[tag=team] equipment.head.components.minecraft:custom_data.team run function edit:team
execute if data entity @s[tag=align] equipment.head.components.minecraft:custom_data.align run function edit:align

data remove entity @s equipment.head