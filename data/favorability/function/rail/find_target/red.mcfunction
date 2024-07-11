scoreboard players operation #ask rail_ask_red = @s rail_ask_red
execute as @a[scores={fav_Rnum=1..}] if score @s fav_Rnum = #ask rail_ask_red run tag @s add ask_rail_target