scoreboard players add 第二天限制分數 menu 1000
execute if score 第一天限制分數 menu >= 第二天限制分數 menu run scoreboard players operation 第二天限制分數 menu = 第一天限制分數 menu
execute if score 第二天限制分數 menu >= 目標分數 menu run scoreboard players set 第二天限制分數 menu 0
data modify block ~ ~ ~ front_text.messages[2] set value '{"score":{"name":"第二天限制分數","objective":"menu"},"bold":true,"clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}'
execute if score 第二天限制分數 menu matches 0 run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"無限制","bold":true,"clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}'
execute if score 第二天限制分數 menu matches 0 run scoreboard players reset 第二天限制分數 menu