tag @s add duel_asking

execute if score @s duel_ask_red matches 1..100 run function favorability:duel/find_target/red
execute if score @s duel_ask_blue matches 1..100 run function favorability:duel/find_target/blue

execute if entity @a[tag=ask_duel_target,predicate=favorability:scores/duel_feedback] run function favorability:duel/fail/feedback
execute if entity @a[tag=ask_duel_target,scores={duel_pair=1..}] run function favorability:duel/fail/married
execute if entity @a[tag=ask_duel_target,tag=duel_asking] run function favorability:duel/fail/asking

tag @a[tag=ask_duel_target,limit=1] add fav_compare
scoreboard players set #small fav_op 30
execute if entity @a[tag=fav_compare,limit=1] run function favorability:compare/small/root
execute if entity @s[tag=fav_compare_success] run function favorability:duel/send_request
execute if entity @a[tag=ask_duel_target,limit=1] unless entity @s[tag=fav_compare_success] run function favorability:duel/fail/upper

tag @a[tag=ask_duel_target,limit=1] remove ask_duel_target
tag @a[tag=fav_compare,limit=1] remove fav_compare
tag @a[tag=fav_compare_success,limit=1] remove fav_compare_success