playsound ui.button.click ambient @s ~ ~ ~

execute if entity @s[scores={duel_pair=1..}] run function favorability:duel/fail/self_duel
execute if entity @s[tag=duel_asking] run function favorability:duel/fail/self_ask
execute if entity @s[predicate=favorability:scores/duel_feedback] run function favorability:duel/fail/self_feedback

execute if entity @s[tag=!duel_fail] run function favorability:duel/success

tag @s remove duel_fail
scoreboard players reset @s duel_ask_red
scoreboard players reset @s duel_ask_blue