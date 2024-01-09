playsound entity.player.attack.sweep ambient @s

tellraw @s {"text":"——————————————————","bold":true,"color":"gold"}
execute store result score total_check list2 if entity @e[team=red_edit,tag=spawn]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"重生點: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]
execute store result score total_check list2 if entity @e[team=blue_edit,tag=spawn]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"重生點: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]

tellraw @s {"text":"——————————————————","bold":true,"color":"gold"}
execute store result score total_check list2 if entity @e[team=red_edit,tag=kingspawn]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"國王重生點: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]
execute store result score total_check list2 if entity @e[team=blue_edit,tag=kingspawn]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"國王重生點: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]

tellraw @s {"text":"——————————————————","bold":true,"color":"gold"}
execute store result score total_check list2 if entity @e[team=red_edit,tag=upgrade]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"升級台: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]
execute store result score total_check list2 if entity @e[team=blue_edit,tag=upgrade]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"升級台: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]

tellraw @s {"text":"——————————————————","bold":true,"color":"gold"}
execute store result score total_check list2 if entity @e[team=red_edit,tag=forge]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"鍛造台: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]
execute store result score total_check list2 if entity @e[team=blue_edit,tag=forge]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"鍛造台: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]

tellraw @s {"text":"——————————————————","bold":true,"color":"gold"}
execute store result score total_check list2 if entity @e[team=red_edit,tag=enchant]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"附魔台: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]
execute store result score total_check list2 if entity @e[team=blue_edit,tag=enchant]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"附魔台: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]

tellraw @s {"text":"——————————————————","bold":true,"color":"gold"}
execute store result score total_check list2 if entity @e[tag=middle]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"中央點: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]
execute store result score total_check list2 if entity @e[tag=ancient_debris]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"遠古遺骸: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]

tellraw @s {"text":"——————————————————","bold":true,"color":"gold"}
execute store result score total_check list2 if entity @e[tag=butcher]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"屠夫: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]
execute store result score total_check list2 if entity @e[tag=fletcher]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"製箭師: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]
execute store result score total_check list2 if entity @e[tag=librarian]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"圖書管理員: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]
execute store result score total_check list2 if entity @e[tag=blacksmith]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"鍛造師: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]
execute store result score total_check list2 if entity @e[tag=bomber]
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"爆破兵: ","color":"gold"},{"score":{"name":"total_check","objective":"list2"}},{"text":"個"}]
tellraw @s {"text":"——————————————————","bold":true,"color":"gold"}

execute if score A點 border_x >= B點 border_x run scoreboard players operation 最大值 border_x = A點 border_x
execute if score B點 border_x >= A點 border_x run scoreboard players operation 最大值 border_x = B點 border_x
execute if score A點 border_x <= B點 border_x run scoreboard players operation 最小值 border_x = A點 border_x
execute if score B點 border_x <= A點 border_x run scoreboard players operation 最小值 border_x = B點 border_x
execute if score A點 border_y >= B點 border_y run scoreboard players operation 最大值 border_y = A點 border_y
execute if score B點 border_y >= A點 border_y run scoreboard players operation 最大值 border_y = B點 border_y
execute if score A點 border_y <= B點 border_y run scoreboard players operation 最小值 border_y = A點 border_y
execute if score B點 border_y <= A點 border_y run scoreboard players operation 最小值 border_y = B點 border_y
execute if score A點 border_z >= B點 border_z run scoreboard players operation 最大值 border_z = A點 border_z
execute if score B點 border_z >= A點 border_z run scoreboard players operation 最大值 border_z = B點 border_z
execute if score A點 border_z <= B點 border_z run scoreboard players operation 最小值 border_z = A點 border_z
execute if score B點 border_z <= A點 border_z run scoreboard players operation 最小值 border_z = B點 border_z

execute if score 最大值 border_x = 最大值 border_x run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"地圖X軸最大邊界: ","color":"gold"},{"score":{"name":"最大值","objective":"border_x"}}]
execute if score 最小值 border_x = 最小值 border_x run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"地圖X軸最小邊界: ","color":"gold"},{"score":{"name":"最小值","objective":"border_x"}}]

execute if score 最大值 border_y = 最大值 border_y run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"地圖Y軸最大邊界: ","color":"gold"},{"score":{"name":"最大值","objective":"border_y"}}]
execute if score 最小值 border_y = 最小值 border_y run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"地圖Y軸最小邊界: ","color":"gold"},{"score":{"name":"最小值","objective":"border_y"}}]

execute if score 最大值 border_z = 最大值 border_z run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"地圖Z軸最大邊界: ","color":"gold"},{"score":{"name":"最大值","objective":"border_z"}}]
execute if score 最小值 border_z = 最小值 border_z run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"地圖Z軸最小邊界: ","color":"gold"},{"score":{"name":"最小值","objective":"border_z"}}]

tellraw @s {"text":"——————————————————","bold":true,"color":"gold"}
execute as @e[tag=build,tag=!build_setting] run data modify entity @s CustomName set from entity @s ArmorItems[0].tag.display.Name

execute as @e[tag=build,tag=!build_setting] run scoreboard players operation @s build_operation = @s build_score
execute as @e[tag=build,tag=!build_setting] run scoreboard players operation @s build_operation *= 建築分數 menu
execute as @e[tag=build,tag=!build_setting] run scoreboard players operation @s build_operation /= 一百 list2

execute as @e[team=red_edit,tag=build,tag=!build_setting] run tellraw @p ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"score":{"name":"@s","objective":"build_operation"}},{"text":"分"}]
execute if entity @e[team=red_edit,tag=build,tag=!build_setting] run tellraw @s {"text":"——————————————————","bold":true,"color":"gold"}
execute as @e[team=blue_edit,tag=build,tag=!build_setting] run tellraw @p ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"selector":"@s","color":"gold"},{"text":": ","color":"gold"},{"score":{"name":"@s","objective":"build_operation"}},{"text":"分"}]
execute if entity @e[team=blue_edit,tag=build,tag=!build_setting] run tellraw @s {"text":"——————————————————","bold":true,"color":"gold"}