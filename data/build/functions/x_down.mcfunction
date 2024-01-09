execute unless block ~ ~ ~ #build:check run scoreboard players set @s build 1
scoreboard players remove @s sizex 1
execute unless entity @s[scores={build=1..}] if entity @s[scores={sizex=1..}] positioned ~1 ~ ~ run function build:x_down
execute if entity @s[scores={sizex=0}] run function build:xc_down