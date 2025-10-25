execute if items entity @s[team=red] weapon.mainhand *[custom_data~{forge:1}] if predicate forge:20 run effect give @a[team=blue,distance=..4,tag=!forge_hurt] instant_damage 1 0
execute if items entity @s[team=red] weapon.mainhand *[custom_data~{forge:2}] if predicate forge:40 run effect give @a[team=blue,distance=..4,tag=!forge_hurt] instant_damage 1 0
execute if items entity @s[team=red] weapon.mainhand *[custom_data~{forge:3}] if predicate forge:60 run effect give @a[team=blue,distance=..4,tag=!forge_hurt] instant_damage 1 0

execute if items entity @s[team=blue] weapon.mainhand *[custom_data~{forge:1}] if predicate forge:20 run effect give @a[team=red,distance=..4,tag=!forge_hurt] instant_damage 1 0
execute if items entity @s[team=blue] weapon.mainhand *[custom_data~{forge:2}] if predicate forge:40 run effect give @a[team=red,distance=..4,tag=!forge_hurt] instant_damage 1 0
execute if items entity @s[team=blue] weapon.mainhand *[custom_data~{forge:3}] if predicate forge:60 run effect give @a[team=red,distance=..4,tag=!forge_hurt] instant_damage 1 0