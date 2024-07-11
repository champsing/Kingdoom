#@s 是按拒絕的玩家
playsound ui.button.click ambient @s ~ ~ ~
execute if score @s date_feedback_red matches 1.. run function favorability:dating/feedback/red
execute if score @s date_feedback_blue matches 1.. run function favorability:dating/feedback/blue

execute as @a[tag=date_pair] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
tellraw @a[tag=date_pair] ["§6§l>> ","你的約會邀請被","§6拒絕","了"]
tag @a[tag=date_pair] remove date_asking
tellraw @s ["§6§l>> ","你拒絕了","§6約會邀請"]
tag @a[tag=date_pair] remove date_pair

function favorability:dating/reset