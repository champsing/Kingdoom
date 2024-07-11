scoreboard players operation @s Dkit = @s kit
clear @s written_book[custom_data~{kit:"defense"}] 1
function kit:defense/give
execute unless score @s Dkit_cd matches 0.. run scoreboard players set @s Dkit_cd 0
playsound block.beacon.activate ambient @s
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已成功學習"},{"text":"防禦型技能","color":"gold"}]