tag @s add stamina_arrow
tag @s add stamina_damage
execute store result score @s stamina_arrow run data get entity @s damage 10

execute as @a[scores={stamina=..79}] store success score @s stamina_arrow run data modify entity @e[tag=stamina_arrow,limit=1] Owner set from entity @s UUID

execute as @a[scores={stamina=..79,stamina_arrow=0}] run function stamina:arrow_damage

tag @s remove stamina_arrow