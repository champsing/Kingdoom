scoreboard players add 紅隊分數 list 1000
effect give @a[team=blue] strength 30 2 true

tag @s remove Bgem_player
clear @s diamond{team:"blue"}

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"成功護送"},{"text":"藍隊寶石","color":"blue"}]
execute as @a[tag=Bking] run function gem:blue/return