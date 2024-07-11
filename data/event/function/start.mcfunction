execute at @e[type=area_effect_cloud,tag=lobby,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["event"]}
execute as @e[type=area_effect_cloud,tag=event] run function event:random
schedule function event:start 300s
execute if score 遊戲時間 list >= 任務結束 list2 run schedule clear event:start