scoreboard players add 遊戲時間 menu 300
execute if score 遊戲時間 menu matches 3900.. run scoreboard players set 遊戲時間 menu 1200
data modify block ~ ~ ~ front_text.messages[2] set value '{"score":{"name":"遊戲時間","objective":"menu"},"bold":true,"clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}'