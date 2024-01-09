execute if entity @s[scores={sorcery=1}] if score 藍隊靈魂 list matches 5.. run function sorcery:blue/speed
execute if entity @s[scores={sorcery=2}] if score 藍隊靈魂 list matches 5.. run function sorcery:blue/jump
execute if entity @s[scores={sorcery=3}] if score 藍隊靈魂 list matches 5.. run function sorcery:blue/hunger
execute if entity @s[scores={sorcery=4}] if score 藍隊靈魂 list matches 5.. run function sorcery:blue/slowness
execute if entity @s[scores={sorcery=5}] if score 藍隊靈魂 list matches 10.. run function sorcery:blue/resistance
execute if entity @s[scores={sorcery=6}] if score 藍隊靈魂 list matches 10.. run function sorcery:blue/regeneration
execute if entity @s[scores={sorcery=7}] if score 藍隊靈魂 list matches 10.. run function sorcery:blue/clear
execute if entity @s[scores={sorcery=8}] if score 藍隊靈魂 list matches 10.. run function sorcery:blue/alien
execute if entity @s[scores={sorcery=9}] if score 藍隊靈魂 list matches 10.. run function sorcery:blue/strength
execute if entity @s[scores={sorcery=10}] if score 藍隊靈魂 list matches 15.. run function sorcery:blue/summon
execute if entity @s[scores={sorcery=11}] if score 藍隊靈魂 list matches 15.. run function sorcery:blue/absorption
execute if entity @s[scores={sorcery=12}] if score 藍隊靈魂 list matches 15.. run function sorcery:blue/back
execute if entity @s[scores={sorcery=13}] if score 藍隊靈魂 list matches 15.. run function sorcery:blue/fix
execute if entity @s[scores={sorcery=14}] if score 藍隊靈魂 list matches 15.. run function sorcery:blue/weakness
execute if entity @s[scores={sorcery=15}] if score 藍隊靈魂 list matches 15.. run function sorcery:blue/wither
execute if entity @s[scores={sorcery=16}] if score 藍隊靈魂 list matches 20.. run function sorcery:blue/purify

playsound ui.button.click ambient @s
tellraw @s[tag=!sorcery_success] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你沒有足夠的"},{"text":"靈魂","color":"gold"}]
tag @s[tag=sorcery_success] remove sorcery_success
scoreboard players reset @s sorcery
scoreboard players enable @s sorcery