scoreboard players operation @s Kkit = @s kit
clear @s written_book[custom_data~{kit:"king"}] 1
function kit:king/give
execute unless score @s Kkit_cd matches 0.. run scoreboard players set @s Kkit_cd 0
playsound block.beacon.activate ambient @s
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已成功學習"},{"text":"國王技能","color":"gold"}]