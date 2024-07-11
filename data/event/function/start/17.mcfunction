#---引豬---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"小豬想"},{"text":"回家","color":"gold"},{"text":", 把豬引至"},{"text":"國王重生點","color":"gold"},{"text":"即全隊獲得"},{"text":"150元","color":"gold"}]
title @a title ["",{"text":"小豬想","bold":true},{"text":"回家","color":"gold","bold":true}]
title @a subtitle ["",{"text":"把豬引至","bold":true},{"text":"國王重生點","color":"gold","bold":true},{"text":"即全隊獲得","bold":true},{"text":"150元","color":"gold","bold":true}]

execute at @e[tag=middle,limit=1] run summon pig ~ ~ ~ {Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Tags:["event17"],CustomName:'{"text":"小豬"}'}

bossbar set event max 4800
bossbar set event players @a
scoreboard players set 任務倒數 list2 4800
scoreboard players set 任務偵測 list2 17

schedule function event:end/17 240s