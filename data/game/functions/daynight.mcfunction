scoreboard players set 十分鐘寶石 list2 0
scoreboard players add 日夜 list2 1
execute at @e[tag=ancient_debris] run setblock ~ ~ ~ ancient_debris

execute if score 日夜 list2 matches 2 if entity @a[team=red,tag=Rspy] as @a[team=red,tag=Rking] run function spy:book
execute if score 日夜 list2 matches 2 if entity @a[team=blue,tag=Bspy] as @a[team=blue,tag=Bking] run function spy:book
execute if score 日夜 list2 matches 2 run scoreboard players reset 日夜 list2
schedule function game:daynight 600s