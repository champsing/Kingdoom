#@s 是按拒絕的玩家
playsound ui.button.click ambient @s ~ ~ ~
execute if score @s duel_feedback_red matches 1.. run function favorability:duel/feedback/red
execute if score @s duel_feedback_blue matches 1.. run function favorability:duel/feedback/blue

execute as @a[tag=duel_pair] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
tellraw @a[tag=duel_pair] ["§6§l>> ","你發起的決鬥被","§6拒絕","了"]
tellraw @s ["§6§l>> ","你拒絕了","§6決鬥"]
tag @a[tag=duel_pair] remove duel_asking
tag @a[tag=duel_pair] remove duel_pair

function favorability:duel/reset