scoreboard players operation 靈魂分差 list2 = 紅隊分數 list
scoreboard players operation 靈魂分差 list2 -= 藍隊分數 list
scoreboard players operation 靈魂分差 list2 /= 靈魂平衡 list2

execute if score 靈魂分差 list2 matches 1.. run scoreboard players operation 藍隊靈魂 list += 靈魂分差 list2
execute if score 靈魂分差 list2 matches ..-1 run scoreboard players operation 紅隊靈魂 list -= 靈魂分差 list2