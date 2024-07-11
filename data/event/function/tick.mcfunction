execute store result bossbar event value run scoreboard players remove 任務倒數 list2 1
execute if score 任務偵測 list2 matches 0 run function event:tick/00


execute if score 任務偵測 list2 matches 3 run function event:tick/03
execute if score 任務偵測 list2 matches 4 as @a[team=!spec] run function event:tick/04
execute if score 任務偵測 list2 matches 5 as @a[team=!spec,scores={event_kill=1..}] at @s run function event:success/05
execute if score 任務偵測 list2 matches 6 as @a[team=!spec,scores={event_sneak=1..}] at @s run function event:success/06
execute if score 任務偵測 list2 matches 7 as @a[team=!spec,scores={event_kill=1..}] at @s run function event:success/07
execute if score 任務偵測 list2 matches 8 run function event:tick/08
execute if score 任務偵測 list2 matches 9 as @a[scores={event_death=1..},tag=event09] run function event:success/09

execute if score 任務偵測 list2 matches 12 as @a[team=!spec,predicate=event:12] at @s unless block ~ ~ ~ water run function event:success/12

execute if score 任務偵測 list2 matches 14 as @a[scores={event_hurt=1..},tag=!event14] if score @s event_hurt > 最大值 event_hurt run function event:success/14

execute if score 任務偵測 list2 matches 16 as @a[team=!spec,scores={event_gamble=1..}] at @s run function event:tick/16
execute if score 任務偵測 list2 matches 17 as @e[type=pig,tag=event17] at @s run function event:tick/17


execute if score 任務偵測 list2 matches 20 as @e[type=arrow,tag=!event20,nbt={ShotFromCrossbow:1b}] run function event:tick/20