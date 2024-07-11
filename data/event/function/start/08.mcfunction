#---極限運動---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"極限","color":"gold"},{"text":"運動"},{"text":", 墜落高度最高者將獲得"},{"text":"200元","color":"gold"}]
title @a title ["",{"text":"極限","color":"gold","bold":true},{"text":"運動","bold":true}]
title @a subtitle ["",{"text":"墜落高度最高者將獲得","bold":true},{"text":"200元","color":"gold","bold":true}]

scoreboard players reset @a event_fall
scoreboard players set 最大值 event_fall 0

bossbar set event max 2400
bossbar set event players @a
scoreboard players set 任務倒數 list2 2400
scoreboard players set 任務偵測 list2 8

schedule function event:end/08 120s