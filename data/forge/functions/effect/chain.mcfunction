execute if entity @s[team=red,nbt={SelectedItem:{tag:{forge:1}}}] if predicate forge:20 run effect give @a[team=blue,distance=..4,tag=!forge_hurt] instant_damage 1 0
execute if entity @s[team=red,nbt={SelectedItem:{tag:{forge:2}}}] if predicate forge:40 run effect give @a[team=blue,distance=..4,tag=!forge_hurt] instant_damage 1 0
execute if entity @s[team=red,nbt={SelectedItem:{tag:{forge:3}}}] if predicate forge:60 run effect give @a[team=blue,distance=..4,tag=!forge_hurt] instant_damage 1 0

execute if entity @s[team=blue,nbt={SelectedItem:{tag:{forge:1}}}] if predicate forge:20 run effect give @a[team=red,distance=..4,tag=!forge_hurt] instant_damage 1 0
execute if entity @s[team=blue,nbt={SelectedItem:{tag:{forge:2}}}] if predicate forge:40 run effect give @a[team=red,distance=..4,tag=!forge_hurt] instant_damage 1 0
execute if entity @s[team=blue,nbt={SelectedItem:{tag:{forge:3}}}] if predicate forge:60 run effect give @a[team=red,distance=..4,tag=!forge_hurt] instant_damage 1 0