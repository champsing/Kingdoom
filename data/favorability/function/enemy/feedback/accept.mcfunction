#@s 是按答應的玩家
playsound ui.button.click ambient @s ~ ~ ~

execute store result score @s enemy_pair run scoreboard players add #pair enemy_pair 1
execute if score @s enemy_feedback_red matches 1.. run function favorability:enemy/feedback/red
execute if score @s enemy_feedback_blue matches 1.. run function favorability:enemy/feedback/blue

scoreboard players operation @a[tag=enemy_pair] enemy_pair = #pair enemy_pair
execute as @a[tag=enemy_pair] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
tellraw @a[tag=enemy_pair] ["§6§l>> ",{"selector":"@s"},"成為了你的","§6宿敵"]
tellraw @s ["§6§l>> ","你成為了",{"selector":"@a[tag=enemy_pair]"},"的","§6宿敵"]
tag @a[tag=enemy_pair] remove enemy_asking
tag @a[tag=enemy_pair] remove enemy_pair

function favorability:enemy/reset