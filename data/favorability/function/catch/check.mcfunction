scoreboard players operation #catch marry_pair = @s marry_pair
execute as @a[team=!spec,scores={marry_pair=1..}] if score @s marry_pair = #catch marry_pair run tag @s add catch_rail

execute as @a[tag=catch_rail] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~

tag @s remove catch_rail
tag @s add fav_add
tag @a[tag=catch_rail] add fav_add

execute unless score @a[tag=catch_rail,limit=1] rail_count matches 1.. run function favorability:catch/fail
execute if score @a[tag=catch_rail,limit=1] rail_count matches 1.. run function favorability:catch/success/root

execute as @a[tag=fav_add] run function favorability:add/root
tag @a[tag=fav_add] remove fav_add
tag @a[tag=catch_rail] remove catch_rail