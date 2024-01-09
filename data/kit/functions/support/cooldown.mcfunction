scoreboard players remove @s Skit_cd 1
execute if score @s Skit_cd matches 0 if score @s Skit matches 21..28 run function kit:support/give
execute if score @s Skit_cd matches 0 if score @s Skit matches 21..28 run playsound block.shulker_box.open ambient @s ~ ~ ~ 1 2
tellraw @s[scores={Skit_cd=0,Skit=21..28}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你的"},{"text":"支援型技能","color":"gold"},{"text":"已冷卻完畢"}]