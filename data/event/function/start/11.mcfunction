#---靈魂交換---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"靈魂","color":"gold"},{"text":"交換"},{"text":", 雙方國王的"},{"text":"位置","color":"gold"},{"text":"在十秒後互換"}]
title @a title ["",{"text":"靈魂","color":"gold","bold":true},{"text":"交換","bold":true}]
title @a subtitle ["",{"text":"雙方國王的","bold":true},{"text":"位置","color":"gold","bold":true},{"text":"在十秒後互換","bold":true}]

bossbar set event max 200
bossbar set event players @a
scoreboard players set 任務倒數 list2 200
scoreboard players set 任務偵測 list2 11

schedule function event:end/11 10s