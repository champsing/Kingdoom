#---漫步---
scoreboard players add @s Skit_score 1
setblock ~ ~-1 ~ cobblestone keep
particle block stone ~ ~ ~ 0 0 0 0 1 force @a

tag @s[scores={Skit_score=160}] remove Skit04
scoreboard players reset @s[scores={Skit_score=160}] Skit_score