execute store result score @s lottery run data get entity @s UUID[1]
scoreboard players operation @s lottery %= 大獎 lottery

execute if score @s lottery matches 0 run give @a[tag=lottery] diamond_helmet[attribute_modifiers=[{type:"max_health",amount:5,operation:"add_value",id:"be713292-dd26-464a-9c9a-becd221661e0",slot:"head"},{type:"armor",amount:3,operation:"add_value",id:"0000000a-0000-000a-0000-000a0000000a",slot:"head"}]]
execute if score @s lottery matches 0 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"鑽石頭盔","color":"gold"}]

execute if score @s lottery matches 1 run give @a[tag=lottery] diamond_chestplate[attribute_modifiers=[{type:"knockback_resistance",amount:0.1d,operation:"add_value",id:"be713292-dd26-464a-9c9a-becd221661e0",slot:"chest"},{type:"armor",amount:3,operation:"add_value",id:"00000014-0000-0014-0000-001400000014",slot:"chest"}]]
execute if score @s lottery matches 1 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"鑽石胸甲","color":"gold"}]

execute if score @s lottery matches 2 run give @a[tag=lottery] diamond_leggings[attribute_modifiers=[{type:"attack_speed",amount:0.7d,operation:"add_value",id:"be713292-dd26-464a-9c9a-becd221661e0",slot:"legs"},{type:"armor",amount:3,operation:"add_value",id:"0000001e-0000-001e-0000-001e0000001e",slot:"legs"}]]
execute if score @s lottery matches 2 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"鑽石護腿","color":"gold"}]

execute if score @s lottery matches 3 run give @a[tag=lottery] diamond_boots[attribute_modifiers=[{type:"attack_damage",amount:0.5d,operation:"add_value",id:"be713292-dd26-464a-9c9a-becd221661e0",slot:"feet"},{type:"armor",amount:3,operation:"add_value",id:"00000028-0000-0028-0000-002800000028",slot:"feet"}]]
execute if score @s lottery matches 3 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"鑽石靴子","color":"gold"}]

execute if score @s lottery matches 4 run give @a[tag=lottery] enchanted_golden_apple
execute if score @s lottery matches 4 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"附魔金蘋果","color":"gold"}]

execute if score @s lottery matches 5 run give @a[tag=lottery] trident[enchantments={loyalty:1}]
execute if score @s lottery matches 5 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"三叉戟","color":"gold"}]

execute if score @s lottery matches 6 run give @a[tag=lottery] elytra
execute if score @s lottery matches 6 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"鞘翅","color":"gold"}]

execute if score @s lottery matches 7 run give @a[tag=lottery] enchanted_book[stored_enchantments={"minecraft:protection":4}]
execute if score @s lottery matches 7 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"保護IV附魔書","color":"gold"}]

execute if score @s lottery matches 8 run give @a[tag=lottery] potion[potion_contents={potion:"minecraft:invisibility"}]
execute if score @s lottery matches 8 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"隱形藥水","color":"gold"}]

scoreboard players reset @s lottery