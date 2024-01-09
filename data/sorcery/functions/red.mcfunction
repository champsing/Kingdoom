execute if entity @s[scores={sorcery=1}] if score 紅隊靈魂 list matches 5.. run function sorcery:red/speed
execute if entity @s[scores={sorcery=2}] if score 紅隊靈魂 list matches 5.. run function sorcery:red/jump
execute if entity @s[scores={sorcery=3}] if score 紅隊靈魂 list matches 5.. run function sorcery:red/hunger
execute if entity @s[scores={sorcery=4}] if score 紅隊靈魂 list matches 5.. run function sorcery:red/slowness
execute if entity @s[scores={sorcery=5}] if score 紅隊靈魂 list matches 10.. run function sorcery:red/resistance
execute if entity @s[scores={sorcery=6}] if score 紅隊靈魂 list matches 10.. run function sorcery:red/regeneration
execute if entity @s[scores={sorcery=7}] if score 紅隊靈魂 list matches 10.. run function sorcery:red/clear
execute if entity @s[scores={sorcery=8}] if score 紅隊靈魂 list matches 10.. run function sorcery:red/alien
execute if entity @s[scores={sorcery=9}] if score 紅隊靈魂 list matches 10.. run function sorcery:red/strength
execute if entity @s[scores={sorcery=10}] if score 紅隊靈魂 list matches 15.. run function sorcery:red/summon
execute if entity @s[scores={sorcery=11}] if score 紅隊靈魂 list matches 15.. run function sorcery:red/absorption
execute if entity @s[scores={sorcery=12}] if score 紅隊靈魂 list matches 15.. run function sorcery:red/back
execute if entity @s[scores={sorcery=13}] if score 紅隊靈魂 list matches 15.. run function sorcery:red/fix
execute if entity @s[scores={sorcery=14}] if score 紅隊靈魂 list matches 15.. run function sorcery:red/weakness
execute if entity @s[scores={sorcery=15}] if score 紅隊靈魂 list matches 15.. run function sorcery:red/wither
execute if entity @s[scores={sorcery=16}] if score 紅隊靈魂 list matches 20.. run function sorcery:red/purify

playsound ui.button.click ambient @s
tellraw @s[tag=!sorcery_success] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你沒有足夠的"},{"text":"靈魂","color":"gold"}]
tag @s[tag=sorcery_success] remove sorcery_success
scoreboard players reset @s sorcery
scoreboard players enable @s sorcery