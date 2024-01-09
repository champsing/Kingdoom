#---點擊---
tag @s add Bclick
execute as @a[team=blue] if score @s Bnumber = @a[tag=Bclick,limit=1] Bclick run scoreboard players add @s Bvote 1
playsound ui.button.click ambient @s
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已成功"},{"text":"投票","color":"gold"}]
tag @s remove Bclick
scoreboard players reset @s Bclick