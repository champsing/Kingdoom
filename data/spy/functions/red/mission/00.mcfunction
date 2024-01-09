execute if entity @a[distance=..4,tag=Rking] run scoreboard players add @s mission 1

tellraw @s[scores={mission=1}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"開始進行"},{"text":"任務","color":"gold"}]
tellraw @s[scores={mission=600}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"任務進度: ","color":"gold"},{"text":"30秒"}]

execute unless entity @a[distance=..4,tag=Rking] run tellraw @s[scores={mission=1..}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"任務","color":"gold"},{"text":"已被中斷"}]
execute unless entity @a[distance=..4,tag=Rking] if entity @s[scores={mission=1..}] run scoreboard players reset @s mission

execute if score @s mission matches 1200.. run function spy:red/mission/success