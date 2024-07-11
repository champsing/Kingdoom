#---狙擊時間---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"狙擊","color":"gold"},{"text":"時間"},{"text":", 四分鐘內用弩射出的箭"},{"text":"雙倍","color":"gold"},{"text":"傷害"}]
title @a title ["",{"text":"狙擊","bold":true,"color":"gold"},{"text":"時間","bold":true}]
title @a subtitle ["",{"text":"四分鐘內用弩射出的箭","bold":true},{"text":"雙倍","color":"gold","bold":true},{"text":"傷害","bold":true}]

bossbar set event max 4800
bossbar set event players @a
scoreboard players set 任務倒數 list2 4800
scoreboard players set 任務偵測 list2 20

schedule function event:end/20 240s