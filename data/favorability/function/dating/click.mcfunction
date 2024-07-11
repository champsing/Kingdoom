playsound ui.button.click ambient @s ~ ~ ~

execute if entity @s[scores={date_pair=1..}] run function favorability:dating/fail/self_date
execute if entity @s[tag=date_asking] run function favorability:dating/fail/self_ask
execute if entity @s[predicate=favorability:scores/date_feedback] run function favorability:dating/fail/self_feedback

execute if entity @s[tag=!date_fail] run function favorability:dating/success

tag @s remove date_fail
scoreboard players reset @s date_ask_red
scoreboard players reset @s date_ask_blue