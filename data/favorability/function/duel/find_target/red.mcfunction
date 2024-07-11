scoreboard players operation #ask duel_ask_red = @s duel_ask_red
execute as @a[scores={fav_Rnum=1..}] if score @s fav_Rnum = #ask duel_ask_red run tag @s add ask_duel_target