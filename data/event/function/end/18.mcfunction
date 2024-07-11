#---決鬥---
execute if entity @a[tag=event18] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"由於沒分出"},{"text":"勝負","color":"gold"},{"text":", 因此兩人強制"},{"text":"死亡","color":"gold"}]
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"決鬥","color":"gold"},{"text":"結束"}]
kill @a[tag=event18]
tag @a[tag=event18] remove event18
function event:end