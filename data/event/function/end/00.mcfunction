#---噩運水晶---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"噩運水晶","color":"gold"},{"text":"已消失"}]
clear @a heart_of_the_sea
kill @e[type=item,nbt={Item:{id:"minecraft:heart_of_the_sea"}}]
scoreboard players reset @a event_curse
function event:end