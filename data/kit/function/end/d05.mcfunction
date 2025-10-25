#---潛行---
scoreboard players add @s Dkit_score 1
tag @s[scores={Dkit_score=300}] remove Dkit05

execute unless entity @s[scores={gem=1}] run item replace entity @s[scores={Dkit_score=300}] armor.head from entity @s enderchest.1
item replace entity @s[scores={Dkit_score=300}] armor.chest from entity @s enderchest.2
item replace entity @s[scores={Dkit_score=300}] armor.legs from entity @s enderchest.3
item replace entity @s[scores={Dkit_score=300}] armor.feet from entity @s enderchest.4

execute if data entity @s[scores={Dkit_score=300,gem=1}] EnderItems[{Slot:1b}] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1},Tags:["Dkit05_gem"]}
data modify entity @e[type=item,limit=1,distance=..0.3,tag=Dkit05_gem] Item set from entity @s[scores={Dkit_score=300,gem=1}] EnderItems[{Slot:1b}]

scoreboard players reset @s[scores={Dkit_score=300}] Dkit_score