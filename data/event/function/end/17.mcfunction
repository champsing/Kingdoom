#---小豬---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"小豬","color":"gold"},{"text":"已消失"}]
kill @e[type=pig,tag=event17]
function event:end