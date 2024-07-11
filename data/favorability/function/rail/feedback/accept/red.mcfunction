scoreboard players operation @s rail_red = @s rail_feedback_red
scoreboard players operation #rail rail_red = @s rail_feedback_red
execute as @a[scores={fav_Rnum=1..}] if score @s fav_Rnum = #rail rail_red run tag @s add rail_pair