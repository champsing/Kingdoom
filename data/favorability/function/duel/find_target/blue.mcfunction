scoreboard players operation #ask duel_ask_blue = @s duel_ask_blue
execute as @a[scores={fav_Bnum=1..}] if score @s fav_Bnum = #ask duel_ask_blue run tag @s add ask_duel_target