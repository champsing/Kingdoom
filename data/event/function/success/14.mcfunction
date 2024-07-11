#---抖M教徒---
scoreboard players operation 最大值 event_hurt = @s event_hurt

tag @a[tag=event14] remove event14
tag @s add event14

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"成功超越最高記錄"},{"text":", 成績為"},{"score":{"name":"@s","objective":"event_hurt"}}]