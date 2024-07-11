#@s 是按答應的玩家
playsound ui.button.click ambient @s ~ ~ ~

execute store result score @s duel_pair run scoreboard players add #pair duel_pair 1
execute if score @s duel_feedback_red matches 1.. run function favorability:duel/feedback/red
execute if score @s duel_feedback_blue matches 1.. run function favorability:duel/feedback/blue


scoreboard players operation @a[tag=duel_pair] duel_pair = #pair duel_pair
execute as @a[tag=duel_pair] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
tellraw @a[tag=duel_pair] ["§6§l>> ",{"selector":"@s"},"接受了你的","§6決鬥"]
tellraw @s ["§6§l>> ","你接受了",{"selector":"@a[tag=duel_pair]"},"的","§6決鬥"]

tellraw @a ["§6§l>> ",{"selector":"@a[tag=duel_pair]"},"向",{"selector":"@s"},"發起了一場","§6決鬥"]

tag @a[tag=duel_pair] remove duel_asking
tag @a[tag=duel_pair] remove duel_pair

function favorability:duel/reset