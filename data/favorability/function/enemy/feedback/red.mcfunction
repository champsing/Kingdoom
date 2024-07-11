scoreboard players operation #find_pair enemy_pair = @s enemy_feedback_red
execute as @a[scores={fav_Rnum=1..}] if score @s fav_Rnum = #find_pair enemy_pair run tag @s add enemy_pair