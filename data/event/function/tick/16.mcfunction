#---賭博---
scoreboard players operation @s event_record += @s event_gamble
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你目前丟出了"},{"score":{"name":"@s","objective":"event_record"}},{"text":"顆"},{"text":"綠寶石","color":"gold"}]
execute as @e[type=item,distance=..2] if items entity @s contents emerald run kill
scoreboard players reset @s event_gamble