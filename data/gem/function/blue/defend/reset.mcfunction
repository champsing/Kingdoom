scoreboard players add 紅隊分數 list 5
scoreboard players add 紅隊捍衛最大值 list2 5
scoreboard players reset 紅隊捍衛 list2
execute if score 紅隊捍衛最大值 list2 matches 1000.. run function gem:blue/defend/end