data modify storage build:number number prepend from entity @s[tag=build] ArmorItems[1].tag
playsound ui.button.click ambient @p ~ ~ ~
execute if block ~ ~ ~ structure_block run setblock ~ ~ ~ air
kill @s