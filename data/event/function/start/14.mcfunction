#---抖M教徒---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"抖M","color":"gold"},{"text":"教徒"},{"text":", 受到最多"},{"text":"傷害","color":"gold"},{"text":"的人可獲得"},{"text":"200元","color":"gold"}]
title @a title ["",{"text":"抖M","color":"gold","bold":true},{"text":"教徒","bold":true}]
title @a subtitle ["",{"text":"受到最多","bold":true},{"text":"傷害","color":"gold","bold":true},{"text":"的人可獲得","bold":true},{"text":"200元","color":"gold","bold":true}]

scoreboard players reset @a event_hurt
scoreboard players set 最大值 event_hurt 0

bossbar set event max 3600
bossbar set event players @a
scoreboard players set 任務倒數 list2 3600
scoreboard players set 任務偵測 list2 14

schedule function event:end/14 180s