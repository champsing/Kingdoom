#---噩運水晶---
clear @s heart_of_the_sea
execute if entity @s[team=red] run scoreboard players add @a[team=red] money 50
execute if entity @s[team=blue] run scoreboard players add @a[team=blue] money 50
schedule function event:end/00 1t