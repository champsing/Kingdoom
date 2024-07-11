execute if entity @s[team=red,nbt={SelectedItem:{components:{"minecraft:custom_data":{forge:1}}}}] if predicate forge:25 run scoreboard players add 紅隊靈魂 list 1
execute if entity @s[team=red,nbt={SelectedItem:{components:{"minecraft:custom_data":{forge:2}}}}] if predicate forge:50 run scoreboard players add 紅隊靈魂 list 1
execute if entity @s[team=red,nbt={SelectedItem:{components:{"minecraft:custom_data":{forge:3}}}}] if predicate forge:75 run scoreboard players add 紅隊靈魂 list 1

execute if entity @s[team=blue,nbt={SelectedItem:{components:{"minecraft:custom_data":{forge:1}}}}] if predicate forge:25 run scoreboard players add 藍隊靈魂 list 1
execute if entity @s[team=blue,nbt={SelectedItem:{components:{"minecraft:custom_data":{forge:2}}}}] if predicate forge:50 run scoreboard players add 藍隊靈魂 list 1
execute if entity @s[team=blue,nbt={SelectedItem:{components:{"minecraft:custom_data":{forge:3}}}}] if predicate forge:75 run scoreboard players add 藍隊靈魂 list 1