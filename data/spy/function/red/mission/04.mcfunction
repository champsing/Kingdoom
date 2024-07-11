scoreboard players add 紅隊間諜 mission 1
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"任務進度: ","color":"gold"},{"score":{"name":"紅隊間諜","objective":"mission"}},{"text":"個"}]
execute if score 紅隊間諜 mission matches 3.. run function spy:red/mission/success