execute store result score B點 border_x run data get entity @s Pos[0]
execute store result score B點 border_y run data get entity @s Pos[1]
execute store result score B點 border_z run data get entity @s Pos[2]

playsound ui.button.click ambient @p ~ ~ ~
setblock ~ ~ ~ air
kill @s