loot spawn ~ ~ ~ loot edit:name
data modify entity @s ArmorItems[0].tag.display.Name set from entity @e[type=item,limit=1,nbt={Item:{tag:{name:2}}}] Item.tag.display.Name
kill @e[type=item,limit=1,nbt={Item:{tag:{name:2}}}]

execute store result entity @s Pos[0] double 1 run scoreboard players get @s curx
execute store result entity @s Pos[1] double 1 run scoreboard players get @s cury
execute store result entity @s Pos[2] double 1 run scoreboard players get @s curz

tag @s remove build_name
tag @s remove build_setting
tellraw @p ["",{"text":">> ","bold":true,"color":"gold"},{"text":"建築物設定"},{"text":"完成","color":"gold"},{"text":", 尚未設定建築物分數"}]