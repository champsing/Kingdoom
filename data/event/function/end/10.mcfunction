#---互相傷害---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"同隊傷害","color":"gold"},{"text":"已關閉"}]
team modify red friendlyFire false
team modify blue friendlyFire false
function event:end