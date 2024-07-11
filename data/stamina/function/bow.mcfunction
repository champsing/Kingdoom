scoreboard players remove @s stamina 1

execute if entity @s[scores={stamina=..79}] as @e[type=#arrows,tag=!stamina_damage,distance=..1.8] run function stamina:arrow


scoreboard players reset @s stamina_bow
scoreboard players reset @s stamina_crossbow