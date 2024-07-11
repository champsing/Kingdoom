#---刺客任務---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"刺客","color":"gold"},{"text":"任務"},{"text":", 刺殺目標全隊獲得"},{"text":"50元","color":"gold"}]
title @a title ["",{"text":"刺客","color":"gold","bold":true},{"text":"任務","bold":true}]
title @a subtitle ["",{"text":"刺殺目標全隊獲得","bold":true},{"text":"50元","color":"gold","bold":true}]

scoreboard players reset @a event_death

tag @r[team=red,tag=!Rking] add event09
tag @r[team=blue,tag=!Bking] add event09
tellraw @a[team=red] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"gold"},{"text":"的目標為"},{"selector":"@a[team=blue,tag=event09]"}]
tellraw @a[team=blue] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"gold"},{"text":"的目標為"},{"selector":"@a[team=red,tag=event09]"}]
tellraw @a[team=spec] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"雙方","color":"gold"},{"text":"的目標為"},{"selector":"@a[tag=event09]"}]

bossbar set event max 3600
bossbar set event players @a
scoreboard players set 任務倒數 list2 3600
scoreboard players set 任務偵測 list2 9

schedule function event:end/09 180s