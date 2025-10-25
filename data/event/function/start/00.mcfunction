#---噩運水晶---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"噩運水晶","color":"gold"},{"text":"降臨"},{"text":", 送到敵方"},{"text":"國王重生點","color":"gold"},{"text":"全隊獲得50元"}]
title @a title ["",{"text":"噩運水晶","color":"gold","bold":true},{"text":"降臨","bold":true}]
title @a subtitle ["",{"text":"送到敵方","bold":true},{"text":"國王重生點","color":"gold","bold":true},{"text":"全隊獲得50元","bold":true}]

scoreboard players reset @a event_curse
execute at @e[type=armor_stand,tag=middle] run summon item ~ ~2 ~ {CustomName:{"text":"噩運水晶"},CustomNameVisible:1b,Item:{id:"minecraft:heart_of_the_sea",components:{"minecraft:custom_name":{"text":"噩運水晶","italic":false}},count:1},Age:-32768,PickupDelay:50}

bossbar set event max 4800
bossbar set event players @a
scoreboard players set 任務倒數 list2 4800
scoreboard players set 任務偵測 list2 0

schedule function event:end/00 240s