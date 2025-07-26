scoreboard players add 目標分數 menu 1000
execute if score 目標分數 menu matches 11000.. run scoreboard players set 目標分數 menu 1000
execute if score 第一天限制分數 menu >= 目標分數 menu run scoreboard players operation 目標分數 menu = 第一天限制分數 menu
execute if score 第一天限制分數 menu = 目標分數 menu run scoreboard players add 目標分數 menu 1000
execute if score 第二天限制分數 menu >= 目標分數 menu run scoreboard players operation 目標分數 menu = 第二天限制分數 menu
execute if score 第二天限制分數 menu = 目標分數 menu run scoreboard players add 目標分數 menu 1000
data modify block ~ ~ ~ front_text.messages[2] set value {"score":{"name":"目標分數","objective":"menu"},"bold":true,"clickEvent":{"action":"run_command","value":"playsound entity.player.attack.sweep ambient @s"}}