scoreboard players remove @s Dkit_cd 1
execute if score @s Dkit_cd matches 0 if score @s Dkit matches 11..18 run function kit:defense/give
execute if score @s Dkit_cd matches 0 if score @s Dkit matches 11..18 run playsound block.shulker_box.open ambient @s ~ ~ ~ 1 2
tellraw @s[scores={Dkit_cd=0,Dkit=11..18}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你的"},{"text":"防禦型技能","color":"gold"},{"text":"已冷卻完畢"}]