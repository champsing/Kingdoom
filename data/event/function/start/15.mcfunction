#---巨人之力---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"九大巨人","color":"gold"},{"text":"出現"},{"text":", 擊殺巨人後可繼承"},{"text":"巨人之力","color":"gold"}]
title @a title ["",{"text":"九大巨人","color":"gold","bold":true},{"text":"出現","bold":true}]
title @a subtitle ["",{"text":"擊殺巨人後可繼承","bold":true},{"text":"巨人之力","color":"gold","bold":true}]

execute at @e[type=armor_stand,limit=1,tag=middle] run function event:prepare/15