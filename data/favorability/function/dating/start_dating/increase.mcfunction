tag @a[tag=date_self] add fav_add
scoreboard players set #add fav_op 1
function favorability:add/root
scoreboard players set @s date_cooldown 0
tag @a[tag=fav_add] remove fav_add