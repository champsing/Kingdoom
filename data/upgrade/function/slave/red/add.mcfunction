scoreboard players add @a[team=red] money 5
execute if score 紅隊奴隸 team_upgrade matches 1 run schedule function upgrade:slave/red/add 60s
execute if score 紅隊奴隸 team_upgrade matches 2 run schedule function upgrade:slave/red/add 40s
execute if score 紅隊奴隸 team_upgrade matches 3 run schedule function upgrade:slave/red/add 20s