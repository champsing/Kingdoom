tag @s remove wanted
scoreboard players reset @a wanted

execute if entity @s[team=red] run scoreboard players add @a[team=blue] money 50
execute if entity @s[team=red] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"通緝犯","color":"gold"},{"selector":"@s"},{"text":"已被擊殺, "},{"text":"藍隊","color":"blue"},{"text":"獲得"},{"text":"50元","color":"gold"}]

execute if entity @s[team=blue] run scoreboard players add @a[team=red] money 50
execute if entity @s[team=blue] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"通緝犯","color":"gold"},{"selector":"@s"},{"text":"已被擊殺, "},{"text":"紅隊","color":"red"},{"text":"獲得"},{"text":"50元","color":"gold"}]