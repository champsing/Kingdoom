#---禁止蹲下---
effect give @s instant_damage 1 0 true
scoreboard players reset @s event_sneak
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你因為"},{"text":"蹲下","color":"gold"},{"text":"而受到","color":"gold"},{"text":"傷害","color":"gold"}]