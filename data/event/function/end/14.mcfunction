#---抖M教徒---
execute if entity @a[tag=event14] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜"},{"selector":"@a[tag=event14]"},{"text":"獲得"},{"text":"200元","color":"gold"}]
execute unless entity @a[tag=event14] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"無人獲得"},{"text":"200元","color":"gold"}]
scoreboard players add @a[tag=event14] money 200
tag @a[tag=event14] remove event14

function event:end
