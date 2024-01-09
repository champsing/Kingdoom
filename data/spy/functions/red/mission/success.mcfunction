#---完成任務---
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已完成"},{"text":"間諜任務","color":"gold"},{"text":", 藍隊增加"},{"text":"500分","color":"gold"}]
scoreboard players add 藍隊分數 list 500
scoreboard players reset @s spy