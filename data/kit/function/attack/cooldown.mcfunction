scoreboard players remove @s Akit_cd 1
execute if score @s Akit_cd matches 0 if score @s Akit matches 1..8 run function kit:attack/give
execute if score @s Akit_cd matches 0 if score @s Akit matches 1..8 run playsound block.shulker_box.open ambient @s ~ ~ ~ 1 2
tellraw @s[scores={Akit_cd=0,Akit=1..8}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你的"},{"text":"攻擊型技能","color":"gold"},{"text":"已冷卻完畢"}]