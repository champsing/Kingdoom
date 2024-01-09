execute if entity @s[nbt={HandItems:[{tag:{forge:2}}]}] if score 紅隊鍛造台 team_upgrade matches 3 run function forge:level/3
execute if entity @s[nbt={HandItems:[{tag:{forge:1}}]}] if score 紅隊鍛造台 team_upgrade matches 2.. run function forge:level/2
execute if entity @s[nbt={HandItems:[{tag:{forge:0}}]}] if score 紅隊鍛造台 team_upgrade matches 1.. run function forge:level/1