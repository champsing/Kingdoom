#@s 是按拒絕的玩家
playsound ui.button.click ambient @s ~ ~ ~
execute if score @s enemy_feedback_red matches 1.. run function favorability:enemy/feedback/red
execute if score @s enemy_feedback_blue matches 1.. run function favorability:enemy/feedback/blue

execute as @a[tag=enemy_pair] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
tellraw @a[tag=enemy_pair] ["§6§l>> ","你的結仇請求被","§6拒絕","了"]
tellraw @s ["§6§l>> ","你拒絕了","§6結仇"]
tag @a[tag=enemy_pair] remove enemy_asking
tag @a[tag=enemy_pair] remove enemy_pair

function favorability:enemy/reset