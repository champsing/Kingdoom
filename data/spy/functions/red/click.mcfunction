#---點擊---
tag @s add Rclick
execute as @a[team=red] if score @s Rnumber = @a[tag=Rclick,limit=1] Rclick run scoreboard players add @s Rvote 1
playsound ui.button.click ambient @s
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已成功"},{"text":"投票","color":"gold"}]
tag @s remove Rclick
scoreboard players reset @s Rclick