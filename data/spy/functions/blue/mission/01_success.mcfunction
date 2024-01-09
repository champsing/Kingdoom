scoreboard players add 藍隊間諜 mission 1
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"任務進度: ","color":"gold"},{"score":{"name":"藍隊間諜","objective":"mission"}},{"text":"個"}]
execute if score 藍隊間諜 mission matches 2.. run function spy:blue/mission/success