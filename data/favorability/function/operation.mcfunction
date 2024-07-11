execute if score @s fav_op matches 1 run function favorability:check/root
execute if score @s fav_op matches 2 run function favorability:dating/root
execute if score @s fav_op matches 3 run function favorability:marry/root
execute if score @s fav_op matches 4 run function favorability:gift/root
execute if score @s fav_op matches 5 run function favorability:rail/root
execute if score @s fav_op matches 6 run function favorability:catch/root
execute if score @s fav_op matches 7 run function favorability:argue/root
execute if score @s fav_op matches 8 run function favorability:duel/root
execute if score @s fav_op matches 9 run function favorability:enemy/root

scoreboard players reset @s fav_op