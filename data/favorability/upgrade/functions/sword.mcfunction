tellraw @s[scores={sword=3}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已無法再"},{"text":"升級","color":"gold"}]
execute if entity @s[scores={sword=2,money=30..}] run function upgrade:sword/diamond
execute if entity @s[scores={sword=1,money=20..}] run function upgrade:sword/iron
execute if entity @s[scores={sword=0,money=10..}] run function upgrade:sword/stone

playsound ui.button.click ambient @s
scoreboard players reset @s sword_upgrade
tellraw @s[scores={sword=..2},tag=!upgrade_success] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你沒有足夠的"},{"text":"錢","color":"gold"}]