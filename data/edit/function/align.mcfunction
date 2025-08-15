execute if items entity @s armor.head player_head[minecraft:custom_data={edit:1,align:"x"}] align x run tp @s ~ ~ ~
execute if items entity @s armor.head player_head[minecraft:custom_data={edit:1,align:"z"}] align z run tp @s ~ ~ ~
execute if items entity @s armor.head player_head[minecraft:custom_data={edit:1,align:"rotate"}] run tp @s ~ ~ ~ ~45 ~
playsound ui.button.click ambient @p ~ ~ ~