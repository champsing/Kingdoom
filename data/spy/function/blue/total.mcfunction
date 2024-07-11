#---統計票數---
scoreboard players operation 最高票 Bvote > @a[team=blue] Bvote
scoreboard players operation @a[team=blue] Bvote -= 最高票 Bvote
execute store result score 人數 Bvote if entity @a[scores={Bvote=0}]

execute if score 人數 Bvote matches 1 as @a[scores={Bvote=0}] run function spy:blue/check
execute if score 人數 Bvote matches 2 run tellraw @a[team=blue] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"本次投票無"},{"text":"最高票數者","color":"gold"}]

playsound ui.button.click ambient @s
scoreboard objectives setdisplay sidebar.team.blue
scoreboard players reset 最高票 Bvote
scoreboard players reset 人數 Bvote
scoreboard players reset @a[team=blue] Bvote
scoreboard players reset @a[team=blue] Bclick
scoreboard players reset @a[team=blue,tag=Bking] vote
schedule clear spy:blue/total