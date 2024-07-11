#---極限運動---
execute as @a[scores={event_fall=1..}] if score @s event_fall > 最大值 event_fall run function event:success/08
execute as @a[scores={event_fall=1..}] run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你的墜落高度為"},{"score":{"name":"@s","objective":"event_fall"}},{"text":"公分"}]

scoreboard players reset @a[scores={event_fall=1..}] event_fall