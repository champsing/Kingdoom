#@s 是按拒絕的玩家
playsound ui.button.click ambient @s ~ ~ ~
execute if score @s rail_feedback_red matches 1.. run function favorability:rail/feedback/deny/red
execute if score @s rail_feedback_blue matches 1.. run function favorability:rail/feedback/deny/blue

execute as @a[tag=rail_pair] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
tellraw @a[tag=rail_pair] ["§6§l>> ","你的請求被","§6拒絕","了"]
tellraw @s ["§6§l>> ","你拒絕了當","§6小三"]
tag @a[tag=rail_pair] remove rail_pair

function favorability:rail/reset