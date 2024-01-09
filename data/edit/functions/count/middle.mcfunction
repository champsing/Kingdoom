execute store result score 數量 list2 if entity @e[tag=middle]
execute if score 數量 list2 matches 2.. run kill @s
execute if score 數量 list2 matches 2.. run tellraw @p ["",{"text":">> ","bold":true,"color":"gold"},{"text":"設定"},{"text":"失敗","color":"gold"},{"text":", 已存在一個"},{"text":"中央點","color":"gold"}]
tag @s remove middle_one