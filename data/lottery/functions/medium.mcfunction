execute store result score @s lottery run data get entity @s UUID[1]
scoreboard players operation @s lottery %= 中獎 lottery

execute if score @s lottery matches 0 run give @a[tag=lottery] netherite_shovel
execute if score @s lottery matches 0 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"獄髓鏟","color":"gold"}]

execute if score @s lottery matches 1 run give @a[tag=lottery] firework_rocket 10
execute if score @s lottery matches 1 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"煙火","color":"gold"}]

execute if score @s lottery matches 2 run give @a[tag=lottery] bow
execute if score @s lottery matches 2 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"弓","color":"gold"}]

execute if score @s lottery matches 3 run give @a[tag=lottery] crossbow
execute if score @s lottery matches 3 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"弩","color":"gold"}]

execute if score @s lottery matches 4 run give @a[tag=lottery] potion{Potion:"minecraft:regeneration"}
execute if score @s lottery matches 4 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"回復藥水","color":"gold"}]

execute if score @s lottery matches 5 run give @a[tag=lottery] potion{Potion:"minecraft:strength"}
execute if score @s lottery matches 5 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"力量藥水","color":"gold"}]

execute if score @s lottery matches 6 run give @a[tag=lottery] golden_apple{display:{Lore:['{"text":"§7補充5%體力"}']}}
execute if score @s lottery matches 6 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"金蘋果","color":"gold"}]

execute if score @s lottery matches 7 run give @a[tag=lottery] emerald 20
execute if score @s lottery matches 7 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"綠寶石","color":"gold"}]

execute if score @s lottery matches 8 run give @a[tag=lottery] snowball{display:{Name:'{"text":"§f手榴彈"}',Lore:['{"text":"§7點擊右鍵扔出"}']}}
execute if score @s lottery matches 8 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"手榴彈","color":"gold"}]

execute if score @s lottery matches 9 run give @a[tag=lottery] armor_stand{display:{Name:'{"text":"§f地雷"}',Lore:['{"text":"§7對著地上點擊右鍵放置"}']},EntityTag:{NoGravity:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["landmine_point"]}}
execute if score @s lottery matches 9 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"地雷","color":"gold"}]

execute if score @s lottery matches 10 run give @a[tag=lottery] tnt{display:{Lore:['{"text":"§7點擊右鍵放置"}']}} 2
execute if score @s lottery matches 10 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"TNT","color":"gold"}]

execute if score @s lottery matches 11 run give @a[tag=lottery] flint_and_steel
execute if score @s lottery matches 11 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"打火石","color":"gold"}]

execute if score @s lottery matches 12 run give @a[tag=lottery] shears
execute if score @s lottery matches 12 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"剪刀","color":"gold"}]

execute if score @s lottery matches 13 run give @a[tag=lottery] enchanted_book{StoredEnchantments:[{id:"minecraft:protection",lvl:3s}]}
execute if score @s lottery matches 13 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"保護III附魔書","color":"gold"}]

execute if score @s lottery matches 14 run give @a[tag=lottery] enchanted_book{StoredEnchantments:[{id:"minecraft:efficiency",lvl:4s}]}
execute if score @s lottery matches 14 run tellraw @a[tag=lottery] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜你抽中了"},{"text":"效率IV附魔書","color":"gold"}]

scoreboard players reset @s lottery