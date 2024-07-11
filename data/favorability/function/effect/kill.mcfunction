execute store result score @s fav_kill run scoreboard players add #fav_kill fav_kill 1

scoreboard players operation #fav_find fav_kill = @s fav_kill
execute as @a[team=!spec] if score @s fav_death = #fav_find fav_kill run tag @s add fav_killed

tag @s add fav_add
tag @a[tag=fav_killed] add fav_add
scoreboard players set #add fav_op -1
execute as @a[tag=fav_add] run function favorability:add/root
tag @a[tag=fav_add] remove fav_add

scoreboard players operation #duel_kill duel_pair = @s[scores={duel_pair=1..}] duel_pair
execute if score @a[tag=fav_killed,limit=1] duel_pair = #duel_kill duel_pair run function favorability:duel/win

scoreboard players set #fav_kill fav_kill 0
scoreboard players set #fav_death fav_death 0
scoreboard players reset @s fav_kill
scoreboard players reset @a[tag=fav_killed] fav_death
tag @a[tag=fav_killed] remove fav_killed
advancement revoke @s only favorability:kill