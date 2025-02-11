#---死亡效果---
effect give @s resistance 10 199
effect give @s strength 10 0
effect give @s night_vision infinite 0 true
effect give @s regeneration 1 10 true
execute unless score 十分鐘寶石 list2 matches 0 run effect give @s[team=red,tag=Rking] health_boost infinite 4 true
execute unless score 十分鐘寶石 list2 matches 0 run effect give @s[team=blue,tag=Bking] health_boost infinite 4 true
effect give @s[tag=treasure_health] health_boost infinite 4 true
tag @s[tag=treasure_health] remove treasure_health
tp @s @n[tag=spawn,distance=..1,limit=1]
scoreboard players reset @s death