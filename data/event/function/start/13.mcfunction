#---閃電異型---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"異型","color":"gold"},{"text":"降臨"},{"text":", 場上出現9隻"},{"text":"閃電異型","color":"gold"}]
title @a title ["",{"text":"異型","bold":true,"color":"gold"},{"text":"降臨","bold":true}]
title @a subtitle ["",{"text":"場上出現9隻","bold":true},{"text":"閃電異型","bold":true,"color":"gold"}]

kill @e[tag=event13,type=creeper]
execute at @e[type=armor_stand,limit=1,tag=middle] run function event:prepare/13