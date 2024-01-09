execute if entity @s[team=red] run function upgrade:chest/red
execute if entity @s[team=blue] run function upgrade:chest/blue
playsound ui.button.click ambient @s
scoreboard players reset @s chest_upgrade