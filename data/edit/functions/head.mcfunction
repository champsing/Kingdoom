execute if data entity @s[tag=edit] ArmorItems[3].tag.delete run function edit:delete
execute if data entity @s[tag=team] ArmorItems[3].tag.team run function edit:team
execute if data entity @s[tag=align] ArmorItems[3].tag.align run function edit:align

data remove entity @s ArmorItems[3]