tag @s add divorcer
execute as @a[tag=!divorcer,team=!spec] if score @s marry_pair = @a[tag=divorcer,limit=1] marry_pair run tag @s add divorced

tellraw @a ["§6§l>> ",{"selector":"@s"},"主動向",{"selector":"@a[tag=divorced]"},"發起","§6離婚",", ",{"selector":"@s"},"將一半的","§6財產","分給",{"selector":"@a[tag=divorced]"}]

scoreboard players operation @s money /= 一半 list2
scoreboard players operation @a[tag=divorced] money += @s money

execute as @s[scores={rail_count=1..}] run function favorability:marry/rail
execute as @a[tag=divorced,scores={rail_count=1..}] run function favorability:marry/rail

clear @a[tag=divorced] gold_nugget
kill @e[type=item,nbt={Item:{id:"minecraft:gold_nugget"}}]
scoreboard players reset @s marry_pair
scoreboard players reset @a[tag=divorced] marry_pair
effect clear @s resistance
effect clear @a[tag=divorced] resistance
scoreboard players set @s marry_cd 1200
scoreboard players set @a[tag=divorced] marry_cd 1200
tag @a[tag=divorced] remove divorced
tag @s remove divorcer