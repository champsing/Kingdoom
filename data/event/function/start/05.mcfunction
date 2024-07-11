#---殺人時間---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"殺人","color":"gold"},{"text":"時間"},{"text":", 60秒內擊殺"},{"text":"玩家","color":"gold"},{"text":"可獲得額外獎勵"}]
title @a title ["",{"text":"殺人","color":"gold","bold":true},{"text":"時間","bold":true}]
title @a subtitle ["",{"text":"60秒內擊殺","bold":true},{"text":"玩家","color":"gold","bold":true},{"text":"可獲得額外獎勵","bold":true}]

scoreboard players reset @a event_kill

bossbar set event max 1200
bossbar set event players @a
scoreboard players set 任務倒數 list2 1200
scoreboard players set 任務偵測 list2 5

schedule function event:end/05 60s