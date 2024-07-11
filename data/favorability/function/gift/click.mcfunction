playsound ui.button.click ambient @s ~ ~ ~

execute unless data entity @s Inventory[{Slot:-106b}] run function favorability:gift/fail/item
execute if entity @s[tag=gift_asking] run function favorability:gift/fail/self_ask
execute if entity @s[predicate=favorability:scores/gift_feedback] run function favorability:gift/fail/self_feedback

execute if entity @s[tag=!gift_fail] run function favorability:gift/success

tag @s remove gift_fail
scoreboard players reset @s gift_red
scoreboard players reset @s gift_blue