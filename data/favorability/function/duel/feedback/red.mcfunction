scoreboard players operation #find_pair duel_pair = @s duel_feedback_red
execute as @a[scores={fav_Rnum=1..}] if score @s fav_Rnum = #find_pair duel_pair run tag @s add duel_pair