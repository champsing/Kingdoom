execute if entity @s[tag=Rspy,scores={spy=7}] run scoreboard players add 紅隊間諜 mission 1
tellraw @s[tag=Rspy,scores={spy=7}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"任務進度: ","color":"gold"},{"score":{"name":"紅隊間諜","objective":"mission"}},{"text":"個"}]
execute if entity @s[tag=Rspy,scores={spy=7}] if score 紅隊間諜 mission matches 2.. run function spy:red/mission/success

advancement revoke @s only spy:07red