execute if score @s rail_count matches 0..20 run function favorability:rail/effect/health/40
execute if score @s rail_count matches 21..40 run function favorability:rail/effect/health/60
execute if score @s rail_count matches 41..60 run function favorability:rail/effect/health/80
execute if score @s rail_count matches 61..80 run function favorability:rail/effect/health/100
execute if score @s rail_count matches 81..100 run function favorability:rail/effect/health/120
execute if score @s rail_count matches 101..120 run function favorability:rail/effect/health/140
execute if score @s rail_count matches 121..140 run function favorability:rail/effect/health/160
execute if score @s rail_count matches 141..160 run function favorability:rail/effect/health/180
execute if score @s rail_count matches 161..180 run function favorability:rail/effect/health/200
execute if score @s rail_count matches 181..200 run function favorability:rail/effect/health/220
scoreboard players operation @s rail_count_record = @s rail_count