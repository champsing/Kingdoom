#---極限運動---
scoreboard players operation 最大值 event_fall = @s event_fall

tag @a[tag=event08] remove event08
tag @s add event08

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"目前紀錄保持者為"},{"selector":"@s"},{"text":", 成績為"},{"score":{"name":"@s","objective":"event_fall"}},{"text":"公分"}]