data modify entity @s Team set from entity @s equipment.head.components.minecraft:custom_data.team
data merge entity @s {CustomName:"",CustomNameVisible:0b}
playsound ui.button.click ambient @p ~ ~ ~
execute if entity @s[tag=kingspawn] run function edit:count/kingspawn
execute if entity @s[tag=enchant] run function edit:count/enchant
execute if entity @s[tag=upgrade] run function edit:count/upgrade
execute if entity @s[tag=forge] run function edit:count/forge