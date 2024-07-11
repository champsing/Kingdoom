execute store result score disx build run data get entity @s Pos[0]
execute store result score disy build run data get entity @s Pos[1]
execute store result score disz build run data get entity @s Pos[2]

execute as @e[tag=build_setting] at @s run function edit:build/save

kill @s

execute if entity @e[tag=build_setting] run tellraw @p ["",{"text":">> ","bold":true,"color":"gold"},{"text":"建築物點B設定"},{"text":"完成","color":"gold"},{"text":", 請命名建築物"}]
execute if entity @e[tag=build_setting] run tellraw @p ["",{"text":">> ","bold":true,"color":"gold"},{"text":"請打開"},{"text":"結構方塊","color":"gold"},{"text":", 並點擊右下角的"},{"text":"「儲存」","color":"gold"},{"text":"按鈕"}]