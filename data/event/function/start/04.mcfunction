#---動了就會死---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"動了就會"},{"text":"死","color":"gold"},{"text":", 不准移動"},{"text":"15秒","color":"gold"}]
title @a title ["",{"text":"動了就會","bold":true},{"text":"死","color":"gold","bold":true}]
title @a subtitle ["",{"text":"不准移動","bold":true},{"text":"15秒","color":"gold","bold":true}]

bossbar set event max 300
bossbar set event players @a
scoreboard players set 任務倒數 list2 300

schedule function event:prepare/04 3s