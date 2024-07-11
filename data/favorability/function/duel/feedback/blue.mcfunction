scoreboard players operation #find_pair duel_pair = @s duel_feedback_blue
execute as @a[scores={fav_Bnum=1..}] if score @s fav_Bnum = #find_pair duel_pair run tag @s add duel_pair