#---飛拳---
scoreboard players add @s Akit_fist 1
effect clear @s[scores={Akit_fist=3..}] levitation
tag @s[scores={Akit_fist=3..}] remove Akit_fist
scoreboard players reset @s[scores={Akit_fist=3..}] Akit_fist