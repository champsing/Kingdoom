tag @s add gift_asking

execute if score @s gift_red matches 1..100 run function favorability:gift/find_target/red
execute if score @s gift_blue matches 1..100 run function favorability:gift/find_target/blue

execute if entity @a[tag=ask_gift_target,predicate=favorability:scores/gift_feedback] run function favorability:gift/fail/feedback
execute if entity @a[tag=ask_gift_target,tag=gift_asking] run function favorability:gift/fail/asking

execute if entity @a[tag=ask_gift_target,limit=1] at @a[tag=ask_gift_target,limit=1] run function favorability:gift/send

tag @a[tag=ask_gift_target,limit=1] remove ask_gift_target