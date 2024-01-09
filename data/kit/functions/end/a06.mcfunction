#---標記---
scoreboard players add @s Akit_score 1
execute if entity @s[team=red,predicate=kit:target] anchored eyes facing entity @p[team=blue,distance=..6] eyes run tp @s ~ ~ ~ ~ ~
execute if entity @s[team=blue,predicate=kit:target] anchored eyes facing entity @p[team=red,distance=..6] eyes run tp @s ~ ~ ~ ~ ~

tag @s[scores={Akit_score=140}] remove Akit06
scoreboard players reset @s[scores={Akit_score=140}] Akit_score