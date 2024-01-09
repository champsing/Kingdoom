effect give @a[team=red] strength 1 0 true
scoreboard players add 藍隊捍衛 list2 1
execute if score 藍隊捍衛 list2 matches 20.. run function gem:red/defend/reset