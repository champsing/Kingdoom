effect give @a[team=blue] strength 1 0 true
scoreboard players add 紅隊捍衛 list2 1
execute if score 紅隊捍衛 list2 matches 20.. run function gem:blue/defend/reset