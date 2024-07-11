tag @s add marry_asking

execute if score @s marry_ask_red matches 1..100 run function favorability:marry/find_target/red
execute if score @s marry_ask_blue matches 1..100 run function favorability:marry/find_target/blue

execute if entity @a[tag=ask_marry_target,predicate=favorability:scores/marry_feedback] run function favorability:marry/fail/feedback
execute if entity @a[tag=ask_marry_target,scores={marry_pair=1..}] run function favorability:marry/fail/married
execute if entity @a[tag=ask_marry_target,tag=marry_asking] run function favorability:marry/fail/asking
execute if entity @a[tag=ask_marry_target,scores={marry_cd=1..}] run function favorability:marry/fail/cooldown

tag @a[tag=ask_marry_target,limit=1] add fav_compare
scoreboard players set #big fav_op 80
execute if entity @a[tag=fav_compare,limit=1] run function favorability:compare/big/root
execute if entity @s[tag=fav_compare_success] run function favorability:marry/send_request
execute if entity @a[tag=ask_marry_target,limit=1] unless entity @s[tag=fav_compare_success] run function favorability:marry/fail/lower

tag @a[tag=ask_marry_target,limit=1] remove ask_marry_target
tag @a[tag=fav_compare,limit=1] remove fav_compare
tag @a[tag=fav_compare_success,limit=1] remove fav_compare_success