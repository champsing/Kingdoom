#---統計票數---
scoreboard players operation 最高票 Rvote > @a[team=red] Rvote
scoreboard players operation @a[team=red] Rvote -= 最高票 Rvote
execute store result score 人數 Rvote if entity @a[scores={Rvote=0}]

execute if score 人數 Rvote matches 1 as @a[scores={Rvote=0}] run function spy:red/check
execute if score 人數 Rvote matches 2 run tellraw @a[team=red] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"本次投票無"},{"text":"最高票數者","color":"gold"}]

playsound ui.button.click ambient @s
scoreboard objectives setdisplay sidebar.team.red
scoreboard players reset 最高票 Rvote
scoreboard players reset 人數 Rvote
scoreboard players reset @a[team=red] Rvote
scoreboard players reset @a[team=red] Rclick
scoreboard players reset @a[team=red,tag=Rking] vote
schedule clear spy:red/total