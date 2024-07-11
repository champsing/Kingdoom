#---賭注遊戲---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"賭注","color":"gold"},{"text":"遊戲"},{"text":", 丟出第二多"},{"text":"綠寶石","color":"gold"},{"text":"的玩家可獲得"},{"text":"200元","color":"gold"}]
title @a title ["",{"text":"賭注","color":"gold","bold":true},{"text":"遊戲","bold":true}]
title @a subtitle ["",{"text":"丟出第二多","bold":true},{"text":"綠寶石","color":"gold","bold":true},{"text":"的玩家可獲得","bold":true},{"text":"200元","color":"gold","bold":true}]

scoreboard players reset @a event_gamble
scoreboard players reset @a event_record
scoreboard players set 最大值 event_gamble 0

bossbar set event max 3600
bossbar set event players @a
scoreboard players set 任務倒數 list2 3600
scoreboard players set 任務偵測 list2 16

schedule function event:end/16 180s