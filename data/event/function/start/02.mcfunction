#---自殺炸彈客---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"出現"},{"text":"自殺炸彈客","color":"gold"},{"text":", 一分鐘後將會"},{"text":"爆炸","color":"gold"}]
title @a title ["",{"text":"出現","bold":true},{"text":"自殺炸彈客","color":"gold","bold":true}]
title @a subtitle ["",{"text":"一分鐘後將會","bold":true},{"text":"爆炸","color":"gold","bold":true}]

tag @a[tag=event02] remove event02
tag @r[team=red,gamemode=survival,tag=!Rking] add event02
tag @r[team=blue,gamemode=survival,tag=!Bking] add event02

execute as @a[tag=event02] at @s run playsound entity.creeper.primed ambient @s
tellraw @a[tag=event02] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"注意, 你成為了"},{"text":"自殺炸彈客","color":"gold"}]

bossbar set event max 1200
bossbar set event players @a
scoreboard players set 任務倒數 list2 1200
scoreboard players set 任務偵測 list2 2

schedule function event:end/02 60s