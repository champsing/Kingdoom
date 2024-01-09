execute if entity @s[team=red_edit] if entity @a[team=red,tag=grave_pickup] run function inventory:grave/item
execute if entity @s[team=blue_edit] if entity @a[team=blue,tag=grave_pickup] run function inventory:grave/item
execute if entity @s[team=red_edit] run tag @a[team=blue,tag=grave_pickup] add grave_fail
execute if entity @s[team=blue_edit] run tag @a[team=red,tag=grave_pickup] add grave_fail
tag @a[tag=grave_pickup] add grave_path