tag @e[type=area_effect_cloud,tag=lobby] remove start_mode

execute as @a[team=!spec] run scoreboard players operation @s total_money = @s money

execute as @a[team=!spec] run scoreboard players operation @s top_death = @s total_death
execute as @a[team=!spec] run scoreboard players operation @s top_kill = @s total_kill
execute as @a[team=!spec] run scoreboard players operation @s top_bomb = @s total_bomb
execute as @a[team=!spec] run scoreboard players operation @s top_money = @s total_money
scoreboard players operation 死亡最高分 total_death > @a[team=!spec] total_death
scoreboard players operation 殺人最高分 total_kill > @a[team=!spec] total_kill
scoreboard players operation 爆破最高分 total_bomb > @a[team=!spec] total_bomb
scoreboard players operation 金錢最高分 total_money > @a[team=!spec] total_money
scoreboard players operation @a[team=!spec] top_death -= 死亡最高分 total_death
scoreboard players operation @a[team=!spec] top_kill -= 殺人最高分 total_kill
scoreboard players operation @a[team=!spec] top_bomb -= 爆破最高分 total_bomb
scoreboard players operation @a[team=!spec] top_money -= 金錢最高分 total_money

effect give @a resistance infinite 150 true
gamemode adventure @a
execute as @a run tellraw @s ["",{"text":"-----------------------------------------\n","bold":true,"color":"gold"},{"text":"紅隊分數: ","color":"red"},{"score":{"name":"紅隊分數","objective":"list"},"color":"red"},{"text":"\n藍隊分數: ","color":"blue"},{"score":{"name":"藍隊分數","objective":"list"},"color":"blue"},{"text":"\n殺人次數: ","color":"yellow"},{"score":{"name":"@s","objective":"total_kill"},"color":"yellow"},{"text":"\n死亡次數: ","color":"green"},{"score":{"name":"@s","objective":"total_death"},"color":"green"},{"text":"\n-----------------------------------------\n","bold":true,"color":"gold"},{"text":"殺人魔鬼: ","color":"aqua"},{"selector":"@a[scores={top_kill=0}]"},{"text":"  (","color":"aqua"},{"score":{"name":"@a[scores={top_kill=0},limit=1]","objective":"total_kill"},"color":"aqua"},{"text":")\n專業送頭: ","color":"aqua"},{"selector":"@a[scores={top_death=0}]"},{"text":"  (","color":"aqua"},{"score":{"name":"@a[scores={top_death=0},limit=1]","objective":"total_death"},"color":"aqua"},{"text":")\n爆破之王: ","color":"aqua"},{"selector":"@a[scores={top_bomb=0}]"},{"text":"  (","color":"aqua"},{"score":{"name":"@a[scores={top_bomb=0},limit=1]","objective":"total_bomb"},"color":"aqua"},{"text":")\n大富豪家: ","color":"aqua"},{"selector":"@a[scores={top_money=0}]"},{"text":"  (","color":"aqua"},{"score":{"name":"@a[scores={top_money=0},limit=1]","objective":"total_money"},"color":"aqua"},{"text":")","color":"aqua"},{"text":"\n-----------------------------------------","bold":true,"color":"gold"}]

schedule clear game:period
schedule clear game:daynight
schedule clear game:time
schedule clear stamina:regain
schedule clear event:start
schedule clear upgrade:slave/red/add
schedule clear upgrade:slave/blue/add
scoreboard objectives modify list displayname {"text":"遊戲結束","bold":true,"color":"gold"}