tellraw @s[scores={pickaxe=3}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已無法再"},{"text":"升級","color":"gold"}]
execute if entity @s[scores={pickaxe=2,money=30..}] run function upgrade:pickaxe/netherite
execute if entity @s[scores={pickaxe=1,money=20..}] run function upgrade:pickaxe/diamond
execute if entity @s[scores={pickaxe=0,money=10..}] run function upgrade:pickaxe/iron

playsound ui.button.click ambient @s
scoreboard players reset @s pickaxe_upgrade
tellraw @s[scores={pickaxe=..2},tag=!upgrade_success] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你沒有足夠的"},{"text":"錢","color":"gold"}]