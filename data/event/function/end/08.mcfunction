#---極限運動---
execute if entity @a[tag=event08] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜"},{"selector":"@a[tag=event08]"},{"text":"獲得"},{"text":"200元","color":"gold"}]
execute unless entity @a[tag=event08] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"無人獲得"},{"text":"200元","color":"gold"}]
scoreboard players add @a[tag=event08] money 200
tag @a[tag=event08] remove event08

function event:end