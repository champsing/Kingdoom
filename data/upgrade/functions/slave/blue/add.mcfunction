scoreboard players add @a[team=blue] money 5
execute if score 藍隊奴隸 team_upgrade matches 1 run schedule function upgrade:slave/blue/add 60s
execute if score 藍隊奴隸 team_upgrade matches 2 run schedule function upgrade:slave/blue/add 40s
execute if score 藍隊奴隸 team_upgrade matches 3 run schedule function upgrade:slave/blue/add 20s