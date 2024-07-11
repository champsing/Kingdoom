scoreboard players operation @s Akit = @s kit
clear @s written_book[custom_data~{kit:"attack"}] 1
function kit:attack/give
execute unless score @s Akit_cd matches 0.. run scoreboard players set @s Akit_cd 0
playsound block.beacon.activate ambient @s
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已成功學習"},{"text":"攻擊型技能","color":"gold"}]