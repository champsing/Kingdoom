execute store result score @s lottery run data get entity @s UUID[1]
scoreboard players operation @s lottery %= 小獎 lottery

execute if score @s lottery matches 0 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"空氣","color":"gold"}]

execute if score @s lottery matches 1 run give @a[tag=lottery] cooked_beef{display:{Lore:['{"text":"§7補充2%體力"}']}} 10
execute if score @s lottery matches 1 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"牛排","color":"gold"}]

execute if score @s lottery matches 2 run give @a[tag=lottery] cobblestone 64
execute if score @s lottery matches 2 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"鵝卵石","color":"gold"}]

execute if score @s lottery matches 3 run give @a[tag=lottery] stone_shovel
execute if score @s lottery matches 3 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"石鏟","color":"gold"}]

execute if score @s lottery matches 4 run give @a[tag=lottery] potion{Potion:"minecraft:strong_swiftness"}
execute if score @s lottery matches 4 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"加速藥水","color":"gold"}]

execute if score @s lottery matches 5 run give @a[tag=lottery] potion{Potion:"minecraft:strong_leaping"}
execute if score @s lottery matches 5 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"跳躍提升藥水","color":"gold"}]

execute if score @s lottery matches 6 run give @a[tag=lottery] cake
execute if score @s lottery matches 6 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"蛋糕","color":"gold"}]

execute if score @s lottery matches 7 run give @a[tag=lottery] arrow 10
execute if score @s lottery matches 7 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"箭矢","color":"gold"}]

execute if score @s lottery matches 8 run give @a[tag=lottery] fishing_rod
execute if score @s lottery matches 8 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"釣竿","color":"gold"}]

execute if score @s lottery matches 9 run give @a[tag=lottery] egg{display:{Name:'{"text":"§f火焰彈"}',Lore:['{"text":"§7點擊右鍵扔出"}']}} 2
execute if score @s lottery matches 9 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"火焰彈","color":"gold"}]

scoreboard players reset @s lottery