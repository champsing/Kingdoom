tag @s add stamina_arrow
tag @s add stamina_damage
execute store result score @s stamina_arrow run data get entity @s damage 10

execute on origin run function stamina:arrow_damage

tag @s remove stamina_arrow