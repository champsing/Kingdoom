execute if entity @s[tag=Rking] run function gem:red/return
execute if entity @s[tag=!Rking,predicate=gem:head] run function gem:red/fail
execute if entity @s[tag=Bking] run function gem:red/fail
execute if entity @s[tag=!Bking,tag=!Rking,predicate=!gem:head] run function gem:red/success