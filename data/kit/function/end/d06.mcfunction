#---除爆---
scoreboard players add @s Dkit_score 1
kill @e[distance=..20,type=creeper]
kill @e[distance=..20,type=item,tag=grenade]
kill @e[distance=..20,type=tnt]
kill @e[distance=..20,type=armor_stand,tag=landmine]
particle smoke ~ ~ ~ 2 0 2 0 10 force @a
tag @s[scores={Dkit_score=140}] remove Dkit06
scoreboard players reset @s[scores={Dkit_score=140}] Dkit_score