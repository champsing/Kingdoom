execute if items entity @s weapon.mainhand *[custom_data~{forge:1}] if predicate forge:20 run damage @s 0.000000001 soso:pass
execute if items entity @s weapon.mainhand *[custom_data~{forge:1}] if predicate forge:20 run effect give @a[tag=forge_hurt] instant_damage 2 0
execute if items entity @s weapon.mainhand *[custom_data~{forge:2}] if predicate forge:40 run damage @s 0.000000001 soso:pass
execute if items entity @s weapon.mainhand *[custom_data~{forge:2}] if predicate forge:40 run effect give @a[tag=forge_hurt] instant_damage 2 0
execute if items entity @s weapon.mainhand *[custom_data~{forge:3}] if predicate forge:60 run damage @s 0.000000001 soso:pass
execute if items entity @s weapon.mainhand *[custom_data~{forge:3}] if predicate forge:60 run effect give @a[tag=forge_hurt] instant_damage 2 0