#---互相傷害---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"互相"},{"text":"傷害","color":"gold"},{"text":", 開啟"},{"text":"同隊傷害","color":"gold"},{"text":"2分鐘"}]
title @a title ["",{"text":"互相","bold":true},{"text":"傷害","color":"gold","bold":true}]
title @a subtitle ["",{"text":"開啟","bold":true},{"text":"同隊傷害","color":"gold","bold":true},{"text":"2分鐘","bold":true}]

team modify red friendlyFire true
team modify blue friendlyFire true

bossbar set event max 2400
bossbar set event players @a
scoreboard players set 任務倒數 list2 2400
scoreboard players set 任務偵測 list2 10

schedule function event:end/10 120s