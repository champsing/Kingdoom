#---刺客任務---
tag @s remove event09

execute if entity @s[team=red] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"目標"},{"selector":"@s"},{"text":"已被暗殺, "},{"text":"藍隊","color":"gold"},{"text":"獲得50元"}]
execute if entity @s[team=blue] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"目標"},{"selector":"@s"},{"text":"已被暗殺, "},{"text":"紅隊","color":"gold"},{"text":"獲得50元"}]

execute if entity @s[team=red] run scoreboard players add @a[team=blue] money 50
execute if entity @s[team=blue] run scoreboard players add @a[team=red] money 50
scoreboard players reset @s event_death

execute unless entity @a[tag=event09] run schedule function event:end/09 1t