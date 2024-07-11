effect give @s weakness 5 2
execute if entity @s[team=red] run scoreboard players add 藍隊靈魂 list 1
execute if entity @s[team=blue] run scoreboard players add 紅隊靈魂 list 1
scoreboard players add @s money 5
scoreboard players remove @s stamina 5