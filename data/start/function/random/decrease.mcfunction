scoreboard players remove Rinv setting 1
execute if score Rinv setting matches -1 run scoreboard players set Rinv setting 0
data modify block ~ ~ ~-1 front_text.messages[3] set value ["",{"text":"噴裝機率: ","bold":true},{"score":{"name":"Rinv","objective":"setting"},"bold":true},{"text":"%","bold":true}]