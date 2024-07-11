execute if entity @s[team=red] run function upgrade:slave/red
execute if entity @s[team=blue] run function upgrade:slave/blue
playsound ui.button.click ambient @s
scoreboard players reset @s slave_upgrade