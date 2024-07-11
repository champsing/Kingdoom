#檢查自己對所有人的好感度

playsound ui.button.click ambient @s ~ ~ ~

tellraw @s ["",{"text":"——————————————————","color":"gold"}]

execute if entity @a[scores={fav_Rnum=1..20},limit=1] run function favorability:check/red/20
execute if entity @a[scores={fav_Rnum=21..40},limit=1] run function favorability:check/red/40
execute if entity @a[scores={fav_Rnum=41..60},limit=1] run function favorability:check/red/60
execute if entity @a[scores={fav_Rnum=61..80},limit=1] run function favorability:check/red/80
execute if entity @a[scores={fav_Rnum=81..100},limit=1] run function favorability:check/red/100

execute if entity @a[scores={fav_Bnum=1..20},limit=1] run function favorability:check/blue/20
execute if entity @a[scores={fav_Bnum=21..40},limit=1] run function favorability:check/blue/40
execute if entity @a[scores={fav_Bnum=41..60},limit=1] run function favorability:check/blue/60
execute if entity @a[scores={fav_Bnum=61..80},limit=1] run function favorability:check/blue/80
execute if entity @a[scores={fav_Bnum=81..100},limit=1] run function favorability:check/blue/100

tellraw @s ["",{"text":"——————————————————","color":"gold"}]