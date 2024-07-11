#---傳炸彈---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"出現"},{"text":"定時炸彈","color":"gold"},{"text":", 趕快把"},{"text":"炸彈","color":"gold"},{"text":"傳給敵人"}]
title @a title ["",{"text":"出現","bold":true},{"text":"定時炸彈","color":"gold","bold":true}]
title @a subtitle ["",{"text":"趕快把","bold":true},{"text":"炸彈","color":"gold","bold":true},{"text":"傳給敵人","bold":true}]

tag @r[team=!spec,gamemode=survival] add event03

execute as @a[tag=event03] at @s run playsound entity.creeper.primed ambient @s
tellraw @a[tag=event03] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你身上有"},{"text":"炸彈","color":"gold"},{"text":", 趕快傳給"},{"text":"敵人","color":"gold"}]
tellraw @a[tag=!event03] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"定時炸彈","color":"gold"},{"text":"掉落到了"},{"selector":"@a[tag=event03]"},{"text":"身上"}]

bossbar set event max 2400
bossbar set event players @a
scoreboard players set 任務倒數 list2 2400
scoreboard players set 任務偵測 list2 3

schedule function event:end/03 120s