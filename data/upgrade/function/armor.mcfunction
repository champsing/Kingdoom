tellraw @s[scores={armor=3}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已無法再"},{"text":"升級","color":"gold"}]

execute if entity @s[scores={armor=2,money=30..}] run function upgrade:armor/iron
execute if entity @s[scores={armor=1,money=20..}] run function upgrade:armor/chainmail
execute if entity @s[scores={armor=0,money=10..}] run function upgrade:armor/leather

playsound ui.button.click ambient @s
scoreboard players reset @s armor_upgrade
tellraw @s[scores={armor=..2},tag=!upgrade_success] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你沒有足夠的"},{"text":"錢","color":"gold"}]