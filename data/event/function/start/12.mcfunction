#---全球暖化---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"全球"},{"text":"暖化","color":"gold"},{"text":", 曝露在"},{"text":"太陽","color":"gold"},{"text":"下將會受傷"}]
title @a title ["",{"text":"全球","bold":true},{"text":"暖化","color":"gold","bold":true}]
title @a subtitle ["",{"text":"曝露在","bold":true},{"text":"太陽","color":"gold","bold":true},{"text":"下將會受傷","bold":true}]

bossbar set event max 3600
bossbar set event players @a
scoreboard players set 任務倒數 list2 3600

schedule function event:prepare/12 5s