execute if score 藍隊鍛造台 team_upgrade matches 3 run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已無法再"},{"text":"升級","color":"gold"}]
execute if score 藍隊鍛造台 team_upgrade matches 2 if score @s money matches 150.. run function upgrade:forge/blue/3
execute if score 藍隊鍛造台 team_upgrade matches 1 if score @s money matches 100.. run function upgrade:forge/blue/2
execute if score 藍隊鍛造台 team_upgrade matches 0 if score @s money matches 50.. run function upgrade:forge/blue/1
execute if score 藍隊鍛造台 team_upgrade matches ..2 run tellraw @s[tag=!upgrade_success] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你沒有足夠的"},{"text":"錢","color":"gold"}]