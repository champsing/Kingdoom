scoreboard players enable @s duel_ask_red
scoreboard players enable @s duel_ask_blue
playsound ui.button.click ambient @s ~ ~ ~

tellraw @s ["",{"text":"——————————————————","color":"gold"}]

execute if entity @s[team=red] run function favorability:duel/list/blue
execute if entity @s[team=blue] run function favorability:duel/list/red

tellraw @s ["",{"text":"——————————————————","color":"gold"}]