data modify storage build:number number prepend from entity @s[tag=build] ArmorItems[1].components.minecraft:custom_data.name
playsound ui.button.click ambient @p ~ ~ ~
execute if block ~ ~ ~ structure_block run setblock ~ ~ ~ air
kill @s