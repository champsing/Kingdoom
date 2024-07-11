execute if entity @e[type=area_effect_cloud,tag=start_mode] run scoreboard players remove @s[team=!spec] stamina 1
scoreboard players add @s[scores={stamina1=1..}] total_bomb 1
scoreboard players add @s[scores={stamina2=1..}] total_bomb 1
scoreboard players reset @s stamina1
scoreboard players reset @s stamina2
advancement revoke @s only stamina:consume