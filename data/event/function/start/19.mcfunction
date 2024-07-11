#---傳染病來襲---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"傳染病","color":"gold"},{"text":"來襲"},{"text":", 所有玩家"},{"text":"體力","color":"gold"},{"text":"下降20%"}]
title @a title ["",{"text":"傳染病","bold":true,"color":"gold"},{"text":"來襲","bold":true}]
title @a subtitle ["",{"text":"所有玩家","bold":true},{"text":"體力","color":"gold","bold":true},{"text":"下降20%","bold":true}]

scoreboard players remove @a[team=!spec] stamina 20
scoreboard players set @a[team=!spec,scores={stamina=..-1}] stamina 0

execute as @a at @s run playsound entity.drowned.ambient ambient @s