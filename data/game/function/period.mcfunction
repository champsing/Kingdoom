scoreboard players add 時段 list2 1
execute if score 時段 list2 matches 1 run scoreboard objectives modify list displayname {"text":"第一天下午","bold":true,"color":"gold"}
execute if score 時段 list2 matches 2 run scoreboard objectives modify list displayname {"text":"第一天晚上","bold":true,"color":"gold"}
execute if score 時段 list2 matches 3 run scoreboard objectives modify list displayname {"text":"第一天凌晨","bold":true,"color":"gold"}
execute if score 時段 list2 matches 4 run scoreboard objectives modify list displayname {"text":"第二天早上","bold":true,"color":"gold"}
execute if score 時段 list2 matches 5 run scoreboard objectives modify list displayname {"text":"第二天下午","bold":true,"color":"gold"}
execute if score 時段 list2 matches 6 run scoreboard objectives modify list displayname {"text":"第二天晚上","bold":true,"color":"gold"}
execute if score 時段 list2 matches 7 run scoreboard objectives modify list displayname {"text":"第二天凌晨","bold":true,"color":"gold"}
execute if score 時段 list2 matches 8 run scoreboard objectives modify list displayname {"text":"第三天早上","bold":true,"color":"gold"}
execute if score 時段 list2 matches 9 run scoreboard objectives modify list displayname {"text":"第三天下午","bold":true,"color":"gold"}
execute if score 時段 list2 matches 10 run scoreboard objectives modify list displayname {"text":"第三天晚上","bold":true,"color":"gold"}
execute if score 時段 list2 matches 11 run scoreboard objectives modify list displayname {"text":"第三天凌晨","bold":true,"color":"gold"}

execute as @a at @s run playsound block.anvil.place voice @s ~ ~ ~ 1 2

execute if score soul setting matches 0 run function game:soul

schedule function game:period 300s