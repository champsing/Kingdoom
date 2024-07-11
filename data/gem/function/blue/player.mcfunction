execute if entity @s[tag=Bking] run function gem:blue/return
execute if entity @s[tag=!Bking,predicate=gem:head] run function gem:blue/fail
execute if entity @s[tag=Rking] run function gem:blue/fail
execute if entity @s[tag=!Rking,tag=!Bking,predicate=!gem:head] run function gem:blue/success