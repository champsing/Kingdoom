#---初始設定---
effect clear @s
effect give @s resistance infinite 100 true
effect give @s saturation infinite 0 true
effect give @s night_vision infinite 0 true
effect give @s weakness infinite 100 true
effect give @s blindness 3 0 true

gamemode adventure @s
title @s times 10 40 10
tp @s @e[type=area_effect_cloud,tag=lobby,limit=1]
execute at @e[type=area_effect_cloud,tag=lobby,limit=1] run spawnpoint @s ~ ~ ~

title @s title ["",{"text":"⚔ ","bold":true,"color":"red"},{"text":"亡國之戰 II","bold":true,"color":"gold"},{"text":" ⚔","bold":true,"color":"blue"}]
title @s subtitle ["",{"text":"作者: 惡靈","bold":true,"color":"green"}]

tag @s add join