#@s 是按拒絕的玩家
playsound ui.button.click ambient @s ~ ~ ~
execute if score @s marry_feedback_red matches 1.. run function favorability:marry/feedback/deny/red
execute if score @s marry_feedback_blue matches 1.. run function favorability:marry/feedback/deny/blue

execute as @a[tag=marry_pair] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
tellraw @a[tag=marry_pair] ["§6§l>> ","你的求婚被","§6拒絕","了"]
tag @a[tag=marry_pair] remove marry_asking
tellraw @s ["§6§l>> ","你拒絕了","§6求婚"]
tag @a[tag=marry_pair] remove marry_pair

function favorability:marry/reset