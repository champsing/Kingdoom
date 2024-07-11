#@s 是按答應的玩家
playsound ui.button.click ambient @s ~ ~ ~

execute if score @s gift_feedback_red matches 1.. run function favorability:gift/feedback/red
execute if score @s gift_feedback_blue matches 1.. run function favorability:gift/feedback/blue

tag @s add fav_add
tag @a[tag=gift_pair] add fav_add
execute if score @s gift_feedback matches 1 run scoreboard players set #add fav_op 5
execute if score @s gift_feedback matches 2 run scoreboard players set #add fav_op -5
execute if score @s gift_feedback matches 3 run scoreboard players set #add fav_op 0
execute as @a[tag=fav_add] run function favorability:add/root

execute as @a[tag=gift_pair] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~

execute if score @s gift_feedback matches 1 run tellraw @a[tag=gift_pair] ["§6§l>> ",{"selector":"@s"},"喜歡你送的","§6禮物"]
tellraw @s[scores={gift_feedback=1}] ["§6§l>> ","你喜歡這份","§6禮物"]

execute if score @s gift_feedback matches 2 run tellraw @a[tag=gift_pair] ["§6§l>> ",{"selector":"@s"},"不喜歡你送的","§6禮物"]
tellraw @s[scores={gift_feedback=2}] ["§6§l>> ","你不喜歡這份","§6禮物"]

execute if score @s gift_feedback matches 3 run tellraw @a[tag=gift_pair] ["§6§l>> ",{"selector":"@s"},"沒有回應你的","§6禮物"]
tellraw @s[scores={gift_feedback=3}] ["§6§l>> ","你的回應請求已","§6超時"]

tag @a[tag=gift_pair] remove gift_asking
tag @a[tag=gift_pair] remove gift_pair
tag @a[tag=fav_add] remove fav_add
function favorability:gift/reset