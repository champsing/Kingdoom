#---間諜錯誤---
tellraw @a[team=red] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"票數最高的玩家"},{"selector":"@s"},{"text":"不是"},{"text":"間諜","color":"gold"},{"text":", 紅隊扣"},{"text":"100分","color":"gold"}]
scoreboard players remove 紅隊分數 list 100

execute as @a[tag=Rspy,scores={spy=2}] run function spy:red/mission/success