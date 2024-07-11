scoreboard players remove @s sizez 1
execute unless entity @s[scores={build=1..}] if entity @s[scores={sizez=1..}] positioned ~ ~ ~1 run function build:x
execute unless entity @s[scores={build=1..}] if entity @s[scores={sizez=0}] at @s run function build:success