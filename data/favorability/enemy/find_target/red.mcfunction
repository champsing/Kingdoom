scoreboard players operation #ask enemy_ask_red = @s enemy_ask_red
execute as @a[scores={fav_Rnum=1..}] if score @s fav_Rnum = #ask enemy_ask_red run tag @s add ask_enemy_target