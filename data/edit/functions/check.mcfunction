execute store success score 結束編輯 list2 if entity @e[type=armor_stand,tag=team,team=]
execute if score 結束編輯 list2 matches 1 run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"無法結束"},{"text":"編輯模式","color":"gold"},{"text":", 仍有未設定隊伍的盔甲架"}]

execute if score A點 border_x = A點 border_x unless score B點 border_x = B點 border_x run scoreboard players set 結束編輯 list2 2
execute if score B點 border_x = B點 border_x unless score A點 border_x = A點 border_x run scoreboard players set 結束編輯 list2 2
execute if score A點 border_y = A點 border_y unless score B點 border_y = B點 border_y run scoreboard players set 結束編輯 list2 2
execute if score B點 border_y = B點 border_y unless score A點 border_y = A點 border_y run scoreboard players set 結束編輯 list2 2
execute if score A點 border_z = A點 border_z unless score B點 border_z = B點 border_z run scoreboard players set 結束編輯 list2 2
execute if score B點 border_z = B點 border_z unless score A點 border_z = A點 border_z run scoreboard players set 結束編輯 list2 2

execute if score 結束編輯 list2 matches 2 run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"無法結束"},{"text":"編輯模式","color":"gold"},{"text":", 邊界尚未設定完成"}]

execute if score 結束編輯 list2 matches 0 run function edit:exit