scoreboard players remove @s sizey 1
execute unless entity @s[scores={build=1..}] if entity @s[scores={sizey=1..}] positioned ~ ~-1 ~ run function build:x_down
execute if entity @s[scores={sizey=0}] run function build:yrc_down