#---禁止蹲下---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"骨質","color":"gold"},{"text":"鬆鬆"},{"text":", 60秒禁止"},{"text":"蹲下","color":"gold"},{"text":"以免骨折"}]
title @a title ["",{"text":"骨質","color":"gold","bold":true},{"text":"鬆鬆","bold":true}]
title @a subtitle ["",{"text":"60秒禁止","bold":true},{"text":"蹲下","color":"gold","bold":true},{"text":"以免骨折","bold":true}]

execute as @a at @s run playsound entity.skeleton.hurt ambient @s

bossbar set event max 1200
bossbar set event players @a
scoreboard players set 任務倒數 list2 1200

schedule function event:prepare/06 3s