tag @s add enemy_asking

execute if score @s enemy_ask_red matches 1..100 run function favorability:enemy/find_target/red
execute if score @s enemy_ask_blue matches 1..100 run function favorability:enemy/find_target/blue

execute if entity @a[tag=ask_enemy_target,predicate=favorability:scores/enemy_feedback] run function favorability:enemy/fail/feedback
execute if entity @a[tag=ask_enemy_target,scores={enemy_pair=1..}] run function favorability:enemy/fail/married
execute if entity @a[tag=ask_enemy_target,tag=enemy_asking] run function favorability:enemy/fail/asking

tag @a[tag=ask_enemy_target,limit=1] add fav_compare
scoreboard players set #small fav_op 10
execute if entity @a[tag=fav_compare,limit=1] run function favorability:compare/small/root
execute if entity @s[tag=fav_compare_success] run function favorability:enemy/send_request
execute if entity @a[tag=ask_enemy_target,limit=1] unless entity @s[tag=fav_compare_success] run function favorability:enemy/fail/upper

tag @a[tag=ask_enemy_target,limit=1] remove ask_enemy_target
tag @a[tag=fav_compare,limit=1] remove fav_compare
tag @a[tag=fav_compare_success,limit=1] remove fav_compare_success