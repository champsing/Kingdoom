execute unless data entity @s SelectedItem.components.minecraft:custom_data.kit run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"請把技能書放在"},{"text":"主手","color":"gold"}]
execute if data entity @s SelectedItem.components.minecraft:custom_data.kit run function kit:learn

playsound ui.button.click ambient @s
scoreboard players reset @s kit
scoreboard players enable @s kit