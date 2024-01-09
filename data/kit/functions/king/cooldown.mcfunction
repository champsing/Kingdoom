scoreboard players remove @s Kkit_cd 1
execute if score @s Kkit_cd matches 0 if score @s Kkit matches 31..36 run function kit:king/give
execute if score @s Kkit_cd matches 0 if score @s Kkit matches 31..36 run playsound block.shulker_box.open ambient @s ~ ~ ~ 1 2
tellraw @s[scores={Kkit_cd=0,Kkit=31..36}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你的"},{"text":"國王技能","color":"gold"},{"text":"已冷卻完畢"}]