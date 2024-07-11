playsound ui.button.click ambient @s ~ ~ ~

execute if entity @s[scores={marry_pair=1..}] run function favorability:marry/fail/self_marry
execute if entity @s[tag=marry_asking] run function favorability:marry/fail/self_ask
execute if entity @s[predicate=favorability:scores/marry_feedback] run function favorability:marry/fail/self_feedback
execute if entity @s[scores={marry_cd=1..}] run function favorability:marry/fail/self_cooldown

execute if entity @s[tag=!marry_fail] run function favorability:marry/success

tag @s remove marry_fail
scoreboard players reset @s marry_ask_red
scoreboard players reset @s marry_ask_blue