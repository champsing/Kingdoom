scoreboard players operation 盜竊 list2 = @s money
scoreboard players operation 盜竊 list2 /= 盜竊運算 list2
scoreboard players operation @a[tag=Skit07] money += 盜竊 list2
scoreboard players operation @s money -= 盜竊 list2
particle sneeze ~ ~ ~ 0.1 0.1 0.1 0.1 3 force @a

execute if entity @s[team=red] as @a[tag=Skit07,tag=Rspy,scores={spy=6}] run function spy:red/mission/06
execute if entity @s[team=blue] as @a[tag=Skit07,tag=Bspy,scores={spy=6}] run function spy:blue/mission/06