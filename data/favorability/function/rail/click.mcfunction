playsound ui.button.click ambient @s ~ ~ ~

execute if score @s rail_ask_red matches 1..100 run function favorability:rail/find_target/red
execute if score @s rail_ask_blue matches 1..100 run function favorability:rail/find_target/blue

execute if entity @a[tag=ask_rail_target,predicate=favorability:scores/rail_feedback] run function favorability:rail/fail/feedback
execute if entity @a[tag=ask_rail_target,predicate=favorability:scores/railed] run function favorability:rail/fail/railed

tag @a[tag=ask_rail_target,limit=1] add fav_compare
scoreboard players set #big fav_op 70
execute if entity @a[tag=fav_compare,limit=1] run function favorability:compare/big/root
execute if entity @s[tag=fav_compare_success] run function favorability:rail/send_request
execute if entity @a[tag=ask_rail_target,limit=1] unless entity @s[tag=fav_compare_success] run function favorability:rail/fail/lower

tag @a[tag=ask_rail_target,limit=1] remove ask_rail_target
tag @a[tag=fav_compare,limit=1] remove fav_compare
tag @a[tag=fav_compare_success,limit=1] remove fav_compare_success

scoreboard players reset @s rail_ask_red
scoreboard players reset @s rail_ask_blue