tellraw @s[team=!blue] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你不是"},{"text":"藍隊玩家","color":"gold"}]
execute if entity @s[team=blue] run tag @a remove Bking
execute if entity @s[team=blue] run tag @s add Bking
execute if entity @s[team=blue] run data modify block ~ ~ ~ front_text.messages[2] set value '{"selector":"@a[tag=Bking,team=blue]","bold":true}'