scoreboard players add 藍隊分數 list 1000
effect give @a[team=red] strength 30 2 true

tag @s remove Rgem_player
clear @s diamond[custom_data~{team:"red"}]

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"成功護送"},{"text":"紅隊寶石","color":"red"}]
execute as @a[tag=Rking] run function gem:red/return