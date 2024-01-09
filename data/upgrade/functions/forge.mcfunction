execute if entity @s[team=red] run function upgrade:forge/red
execute if entity @s[team=blue] run function upgrade:forge/blue
playsound ui.button.click ambient @s
scoreboard players reset @s forge_upgrade