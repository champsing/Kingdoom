execute store result score @s lottery run data get entity @s UUID[1]
scoreboard players operation @s lottery %= 大獎 lottery

execute if score @s lottery matches 0 run give @a[tag=lottery] diamond_helmet{AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:5,Operation:0,UUID:[I;-1099877742,-584694198,-1667580211,571892192],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;10,10,10,10],Slot:"head"}]}
execute if score @s lottery matches 0 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"鑽石頭盔","color":"gold"}]

execute if score @s lottery matches 1 run give @a[tag=lottery] diamond_chestplate{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-1099877742,-584694198,-1667580211,571892192],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;20,20,20,20],Slot:"chest"}]}
execute if score @s lottery matches 1 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"鑽石胸甲","color":"gold"}]

execute if score @s lottery matches 2 run give @a[tag=lottery] diamond_leggings{AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.7,Operation:0,UUID:[I;-1099877742,-584694198,-1667580211,571892192],Slot:"legs"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;30,30,30,30],Slot:"legs"}]}
execute if score @s lottery matches 2 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"鑽石護腿","color":"gold"}]

execute if score @s lottery matches 3 run give @a[tag=lottery] diamond_boots{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0.5,Operation:0,UUID:[I;-1099877742,-584694198,-1667580211,571892192],Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;40,40,40,40],Slot:"feet"}]}
execute if score @s lottery matches 3 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"鑽石靴子","color":"gold"}]

execute if score @s lottery matches 4 run give @a[tag=lottery] enchanted_golden_apple
execute if score @s lottery matches 4 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"附魔金蘋果","color":"gold"}]

execute if score @s lottery matches 5 run give @a[tag=lottery] trident{Enchantments:[{id:"loyalty",lvl:1s}]}
execute if score @s lottery matches 5 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"三叉戟","color":"gold"}]

execute if score @s lottery matches 6 run give @a[tag=lottery] elytra
execute if score @s lottery matches 6 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"鞘翅","color":"gold"}]

execute if score @s lottery matches 7 run give @a[tag=lottery] enchanted_book{StoredEnchantments:[{id:"minecraft:protection",lvl:4s}]}
execute if score @s lottery matches 7 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"保護IV附魔書","color":"gold"}]

execute if score @s lottery matches 8 run give @a[tag=lottery] potion{Potion:"minecraft:invisibility"}
execute if score @s lottery matches 8 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"隱形藥水","color":"gold"}]

scoreboard players reset @s lottery