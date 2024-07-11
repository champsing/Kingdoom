#@s 是按答應的玩家
playsound ui.button.click ambient @s ~ ~ ~

execute store result score @s date_pair run scoreboard players add #pair date_pair 1
execute if score @s date_feedback_red matches 1.. run function favorability:dating/feedback/red
execute if score @s date_feedback_blue matches 1.. run function favorability:dating/feedback/blue

scoreboard players operation @a[tag=date_pair] date_pair = #pair date_pair
execute as @a[tag=date_pair] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
tellraw @a[tag=date_pair] ["§6§l>> ",{"selector":"@s"},"答應了你的","§6約會邀請"]
tellraw @a[tag=date_pair] ["§6§l>> ","你和",{"selector":"@s"},"開始了","§6約會"]
tag @a[tag=date_pair] remove date_asking
tellraw @s ["§6§l>> ","你答應了","§6約會邀請"]
tellraw @s ["§6§l>> ","你和",{"selector":"@a[tag=date_pair]"},"開始了","§6約會"]
tag @a[tag=date_pair] remove date_pair
execute as @a[scores={date_pair=1..}] unless score @s date_time = @s date_time store result score @s date_time run scoreboard players set @s date_cooldown 0

function favorability:dating/reset