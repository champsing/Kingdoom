scoreboard players operation @s build_score += 建築分數 list2
execute if score @s build_score matches 5001.. run scoreboard players set @s build_score 5000
execute if score @s build_score matches ..-1 run scoreboard players set @s build_score 0
tellraw @p ["",{"text":">> ","bold":true,"color":"gold"},{"text":"目前分數: "},{"score":{"name":"@s","objective":"build_score"}}]