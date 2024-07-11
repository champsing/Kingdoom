playsound ui.button.click ambient @s ~ ~ ~

execute if entity @s[scores={money=..9}] run function favorability:argue/fail/money

execute if entity @s[tag=!argue_fail] run function favorability:argue/success

tag @s remove argue_fail
scoreboard players reset @s argue_red
scoreboard players reset @s argue_blue