tag @s add argue_asking
scoreboard players remove @s money 10

execute if score @s argue_red matches 1..100 run function favorability:argue/find_target/red
execute if score @s argue_blue matches 1..100 run function favorability:argue/find_target/blue

tellraw @s ["§6§l>> ","吵架","§6成功",", 已減少你和",{"selector":"@a[tag=ask_argue_target,limit=1]"},"的","§6好感度"]
tellraw @a[tag=ask_argue_target,limit=1] ["§6§l>> ",{"selector":"@s"},"和你","§6吵架",", 減少10","§6好感度"]

tag @s add fav_add
tag @a[tag=ask_argue_target] add fav_add
scoreboard players set #add fav_op -10
execute as @a[tag=fav_add] run function favorability:add/root
tag @a[tag=fav_add] remove fav_add

tag @a[tag=ask_argue_target,limit=1] remove ask_argue_target