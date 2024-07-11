tag @s add date_self
scoreboard players add @s date_time 1

scoreboard players operation #date date_pair = @s date_pair
execute at @s as @a[distance=..5,tag=!date_self,team=!spec,scores={date_pair=1..}] if score @s date_pair = #date date_pair run function favorability:dating/start_dating/cooldown

execute as @s[scores={date_time=1200..}] run function favorability:dating/start_dating/end

tag @s remove date_self