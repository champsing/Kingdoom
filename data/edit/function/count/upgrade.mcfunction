execute if entity @s[team=red_edit] store result score 數量 list2 if entity @e[tag=upgrade,team=red_edit]
execute if entity @s[team=blue_edit] store result score 數量 list2 if entity @e[tag=upgrade,team=blue_edit]
execute if score 數量 list2 matches 2.. run kill @s
execute if score 數量 list2 matches 2.. run tellraw @p ["",{"text":">> ","bold":true,"color":"gold"},{"text":"設定"},{"text":"失敗","color":"gold"},{"text":", 已存在一個"},{"text":"升級台","color":"gold"}]
scoreboard players reset 數量 list2