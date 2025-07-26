tellraw @s[team=!red] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你不是"},{"text":"紅隊玩家","color":"gold"}]
execute if entity @s[team=red] run tag @a remove Rking
execute if entity @s[team=red] run tag @s add Rking
execute if entity @s[team=red] run data modify block ~ ~ ~ front_text.messages[2] set value {"selector":"@a[tag=Rking,team=red]","bold":true}