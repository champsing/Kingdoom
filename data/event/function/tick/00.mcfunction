#---噩運水晶---
execute as @a[gamemode=survival,team=!spec] store success score @s event_curse run clear @s heart_of_the_sea 0

effect give @a[scores={event_curse=1}] glowing 2 0 true
execute as @a[team=blue,scores={event_curse=1}] at @s if entity @e[type=armor_stand,tag=kingspawn,team=red_edit,distance=..2] run function event:success/00
execute as @a[team=red,scores={event_curse=1}] at @s if entity @e[type=armor_stand,tag=kingspawn,team=blue_edit,distance=..2] run function event:success/00