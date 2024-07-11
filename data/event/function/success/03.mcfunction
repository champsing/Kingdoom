#---傳炸彈---
tag @a[tag=event03] remove event03

advancement revoke @s only event:03
tag @s add event03
execute at @s run playsound entity.creeper.primed ambient @s
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你身上有"},{"text":"炸彈","color":"gold"},{"text":", 趕快傳給"},{"text":"敵人","color":"gold"}]
tellraw @a[tag=!event03] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"定時炸彈","color":"gold"},{"text":"傳給了"},{"selector":"@s"}]