#---生成礦物---
scoreboard players reset @s mine

execute if score @s stone matches 1 run function ore:setblock/iron
execute if score @s Dstone matches 1 run function ore:setblock/iron
execute if score @s iron matches 1 run function ore:setblock/gold
execute if score @s Diron matches 1 run function ore:setblock/gold
execute if score @s gold matches 1 run function ore:setblock/diamond
execute if score @s Dgold matches 1 run function ore:setblock/diamond