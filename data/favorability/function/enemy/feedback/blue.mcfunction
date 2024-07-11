scoreboard players operation #find_pair enemy_pair = @s enemy_feedback_blue
execute as @a[scores={fav_Bnum=1..}] if score @s fav_Bnum = #find_pair enemy_pair run tag @s add enemy_pair