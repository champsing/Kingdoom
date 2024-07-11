execute if entity @s[team=red] run function upgrade:guardian/red
execute if entity @s[team=blue] run function upgrade:guardian/blue
playsound ui.button.click ambient @s
scoreboard players reset @s guardian_upgrade