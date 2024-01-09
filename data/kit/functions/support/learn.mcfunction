scoreboard players operation @s Skit = @s kit
clear @s written_book{kit:"support"} 1
function kit:support/give
execute unless score @s Skit_cd matches 0.. run scoreboard players set @s Skit_cd 0
playsound block.beacon.activate ambient @s
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已成功學習"},{"text":"支援型技能","color":"gold"}]