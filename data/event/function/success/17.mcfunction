#---豬---
execute if entity @s[team=red_edit] run scoreboard players add @a[team=red] money 150
execute if entity @s[team=blue_edit] run scoreboard players add @a[team=blue] money 150
execute if entity @s[team=red_edit] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"小豬","color":"gold"},{"text":"已送到"},{"text":"紅隊","color":"red"},{"text":"國王重生點"}]
execute if entity @s[team=blue_edit] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"小豬","color":"gold"},{"text":"已送到"},{"text":"藍隊","color":"blue"},{"text":"國王重生點"}]
kill @e[type=pig,tag=event17]
schedule function event:end/17 1t