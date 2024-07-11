#---燃獄---
scoreboard players add @s Akit_score 1
setblock ~ ~ ~ fire keep

tag @s[scores={Akit_score=300}] remove Akit03
scoreboard players reset @s[scores={Akit_score=300}] Akit_score