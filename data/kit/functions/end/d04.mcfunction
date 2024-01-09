#---抗擊---
scoreboard players add @s Dkit_score 1
tag @s[scores={Dkit_score=300}] remove Dkit04
attribute @s[scores={Dkit_score=300}] generic.knockback_resistance base set 0
scoreboard players reset @s[scores={Dkit_score=300}] Dkit_score