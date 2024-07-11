#---決鬥時間---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"決鬥","color":"gold"},{"text":"時間"},{"text":", 不分出"},{"text":"勝負","color":"gold"},{"text":"兩人都會"},{"text":"死掉","color":"gold"}]
title @a title ["",{"text":"決鬥","bold":true,"color":"gold"},{"text":"時間","bold":true}]
title @a subtitle ["",{"text":"不分出","bold":true},{"text":"勝負","color":"gold","bold":true},{"text":"兩人都會","bold":true},{"text":"死掉","color":"gold","bold":true}]

tag @a[tag=event18] remove event18
tag @r[team=red,gamemode=survival,tag=!Rking] add event18
tag @r[team=blue,gamemode=survival,tag=!Bking] add event18

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@a[tag=event18]","separator":{"text":"和"}},{"text":"開始了一場"},{"text":"決鬥","color":"gold"}]

bossbar set event max 4800
bossbar set event players @a
scoreboard players set 任務倒數 list2 4800
scoreboard players set 任務偵測 list2 18

schedule function event:end/18 240s