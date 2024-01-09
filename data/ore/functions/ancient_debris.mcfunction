#---遠古遺骸---
xp add @s 11 points
scoreboard players add @s money 50
scoreboard players remove @s stamina 5
scoreboard players reset @s ancient_debris

execute if entity @s[tag=Rspy,scores={spy=4}] run function spy:red/mission/04
execute if entity @s[tag=Bspy,scores={spy=4}] run function spy:blue/mission/04