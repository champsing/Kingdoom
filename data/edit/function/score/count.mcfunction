execute store result score 建築分數 list2 run data get entity @s Item.count 10
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{score:"minus"}}}}] run scoreboard players operation 建築分數 list2 *= 負數 list2
playsound ui.button.click ambient @p ~ ~ ~
execute as @n[tag=build,limit=1] run function edit:score/operation

data merge entity @s {PickupDelay:0}
tp @s @p