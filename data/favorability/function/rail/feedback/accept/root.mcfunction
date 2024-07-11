#@s 是按答應的玩家
playsound ui.button.click ambient @s ~ ~ ~

execute if score @s rail_feedback_red matches 1.. run function favorability:rail/feedback/accept/red
execute if score @s rail_feedback_blue matches 1.. run function favorability:rail/feedback/accept/blue

scoreboard players add @s rail_count 1
tellraw @s ["§6§l>> ","你答應了當","§6小三"]

execute as @a[tag=rail_pair] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
tellraw @a[tag=rail_pair] ["§6§l>> ",{"selector":"@s"},"答應了你的","§6邀請"]
scoreboard players add @a[tag=rail_pair] rail_count 1
tag @a[tag=rail_pair] remove rail_pair

function favorability:rail/reset