tag @s add date_asking

execute if score @s date_ask_red matches 1..100 run function favorability:dating/find_target/red
execute if score @s date_ask_blue matches 1..100 run function favorability:dating/find_target/blue

execute if entity @a[tag=ask_date_target,predicate=favorability:scores/date_feedback] run function favorability:dating/fail/feedback
execute if entity @a[tag=ask_date_target,scores={date_pair=1..}] run function favorability:dating/fail/dating
execute if entity @a[tag=ask_date_target,tag=date_asking] run function favorability:dating/fail/asking

tag @a[tag=ask_date_target,limit=1] add fav_compare
scoreboard players set #big fav_op 60
execute if entity @a[tag=fav_compare,limit=1] run function favorability:compare/big/root
execute if entity @s[tag=fav_compare_success] run function favorability:dating/send_request
execute if entity @a[tag=ask_date_target,limit=1] unless entity @s[tag=fav_compare_success] run function favorability:dating/fail/lower

tag @a[tag=ask_date_target,limit=1] remove ask_date_target
tag @a[tag=fav_compare,limit=1] remove fav_compare
tag @a[tag=fav_compare_success,limit=1] remove fav_compare_success