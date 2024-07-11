playsound ui.button.click ambient @s ~ ~ ~

execute if entity @s[scores={enemy_pair=1..}] run function favorability:enemy/fail/self_enemy
execute if entity @s[tag=enemy_asking] run function favorability:enemy/fail/self_ask
execute if entity @s[predicate=favorability:scores/enemy_feedback] run function favorability:enemy/fail/self_feedback

execute if entity @s[tag=!enemy_fail] run function favorability:enemy/success

tag @s remove enemy_fail
scoreboard players reset @s enemy_ask_red
scoreboard players reset @s enemy_ask_blue