execute as @a[tag=!join] run function start:setting
execute as @a[scores={death=1}] at @s if entity @e[type=area_effect_cloud,tag=lobby,limit=1,distance=..0.1] run function start:death

execute as @e[type=armor_stand,tag=middle_one] run function edit:count/middle

execute as @e[tag=atm_frame] at @s run function edit:atm
execute as @e[tag=atm] at @s if block ~ ~ ~ air run kill @s

execute as @e[tag=edit] at @s if data entity @s equipment.head.components.minecraft:custom_data.edit run function edit:head
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",components:{"minecraft:custom_data":{BuildScore:1}}}}] at @s if entity @e[tag=build,limit=1,distance=..1] run function edit:score/count

execute as @e[tag=build] at @s if block ~ ~ ~ structure_block run setblock ~ ~1 ~ air
execute as @e[tag=Abuild] at @s run function edit:build/check_a
execute as @e[tag=Bbuild] at @s run function edit:build/check_b
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{name:1}}}}] run function edit:build/check_name

execute as @e[tag=editing] at @s run function edit:pose

execute as @e[tag=border_a] at @s run function edit:border/a
execute as @e[tag=border_b] at @s run function edit:border/b