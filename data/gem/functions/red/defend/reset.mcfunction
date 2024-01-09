scoreboard players add 藍隊分數 list 5
scoreboard players add 藍隊捍衛最大值 list2 5
scoreboard players reset 藍隊捍衛 list2
execute if score 藍隊捍衛最大值 list2 matches 1000.. run function gem:red/defend/end