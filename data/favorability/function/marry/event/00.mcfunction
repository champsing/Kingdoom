execute as @a[tag=!new_marry,team=!spec,scores={money=..50}] run scoreboard players operation #angpao money += @s money
execute as @a[tag=!new_marry,team=!spec,scores={money=..50}] run scoreboard players set @s money 0
execute as @a[tag=!new_marry,team=!spec,scores={money=50..}] run scoreboard players add #angpao money 50
execute as @a[tag=!new_marry,team=!spec,scores={money=50..}] run scoreboard players remove @s money 50

scoreboard players operation #angpao money /= 一半 list2
scoreboard players operation @a[tag=new_marry] money += #angpao money
scoreboard players reset #angpao money
tellraw @a ["§6§l>> ","恭喜",{"selector":"@a[tag=new_marry]","separator":{"text":"和"}},"§6結婚",", 其他玩家各包","§6紅包","花費","§650元"]