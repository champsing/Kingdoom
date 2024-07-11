#---賭博---
scoreboard players operation 最大值 event_gamble > @a[team=!spec,scores={event_record=1..}] event_record
execute as @a[team=!spec,scores={event_record=1..}] if score @s event_record = 最大值 event_gamble run tag @s add event16_top
scoreboard players set 最大值 event_gamble 0
scoreboard players operation 最大值 event_gamble > @a[team=!spec,tag=!event16_top,scores={event_record=1..}] event_record
execute as @r[team=!spec,tag=!event16_top,scores={event_record=1..}] if score @s event_record = 最大值 event_gamble run tag @s add event16

execute if entity @a[tag=event16] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜"},{"selector":"@a[tag=event16]"},{"text":"獲得"},{"text":"200元","color":"gold"}]
execute unless entity @a[tag=event16] run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"無人贏得"},{"text":"賭注遊戲","color":"gold"}]
scoreboard players add @a[tag=event16] money 200

tag @a[tag=event16_top] remove event16_top
tag @a[tag=event16] remove event16
scoreboard players reset 最大值 event_gamble
function event:end