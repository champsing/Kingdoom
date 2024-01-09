execute store result score 建築分數 list2 run data get entity @s Item.Count 10
execute if entity @s[nbt={Item:{tag:{score:"minus"}}}] run scoreboard players operation 建築分數 list2 *= 負數 list2
playsound ui.button.click ambient @p ~ ~ ~
execute as @e[tag=build,limit=1,sort=nearest] run function edit:score/operation

data merge entity @s {PickupDelay:0}
tp @s @p