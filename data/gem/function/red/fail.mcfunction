function gem:red/spawn
clear @s diamond[custom_data~{team:"red"}]
tellraw @s[tag=!Bking] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你的身上已經有一顆"},{"text":"寶石","color":"gold"}]
tellraw @s[tag=Bking] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"國王無法拿取敵方"},{"text":"寶石","color":"gold"}]