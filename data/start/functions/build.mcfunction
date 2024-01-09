scoreboard players add 建築分數 menu 50
execute if score 建築分數 menu matches 1001.. run scoreboard players set 建築分數 menu 0
data modify block ~ ~ ~ front_text.messages[2] set value '[{"score":{"name":"建築分數","objective":"menu"},"bold":true,"clickEvent":{"action":"run_command","value":"playsound entity.player.attack.sweep ambient @s"}},{"text":"%","bold":true}]'