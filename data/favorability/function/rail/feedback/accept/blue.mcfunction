scoreboard players operation @s rail_blue = @s rail_feedback_blue
scoreboard players operation #rail rail_blue = @s rail_feedback_blue
execute as @a[scores={fav_Bnum=1..}] if score @s fav_Bnum = #rail rail_blue run tag @s add rail_pair