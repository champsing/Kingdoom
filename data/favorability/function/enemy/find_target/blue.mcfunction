scoreboard players operation #ask enemy_ask_blue = @s enemy_ask_blue
execute as @a[scores={fav_Bnum=1..}] if score @s fav_Bnum = #ask enemy_ask_blue run tag @s add ask_enemy_target