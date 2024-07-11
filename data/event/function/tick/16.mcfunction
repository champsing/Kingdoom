#---賭博---
scoreboard players operation @s event_record += @s event_gamble
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你目前丟出了"},{"score":{"name":"@s","objective":"event_record"}},{"text":"顆"},{"text":"綠寶石","color":"gold"}]
kill @e[type=item,nbt={Item:{id:"minecraft:emerald"}},distance=..2]
scoreboard players reset @s event_gamble