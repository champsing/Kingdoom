#@s 是按答應的玩家
playsound ui.button.click ambient @s ~ ~ ~

execute store result score @s marry_pair run scoreboard players add #pair marry_pair 1
execute if score @s marry_feedback_red matches 1.. run function favorability:marry/feedback/accept/red
execute if score @s marry_feedback_blue matches 1.. run function favorability:marry/feedback/accept/blue

scoreboard players operation @a[tag=new_marry] marry_pair = #pair marry_pair
execute as @a[tag=new_marry] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
tellraw @a[tag=new_marry] ["§6§l>> ",{"selector":"@s"},"答應了你的","§6求婚"]
tag @a[tag=new_marry] remove marry_asking
tellraw @s ["§6§l>> ","你答應了","§6求婚"]
tag @s add new_marry

function favorability:marry/reset

give @a[tag=new_marry] gold_nugget[custom_name='{"text":"§f結婚戒指"}',lore=['{"text":"§7丟掉戒指或死亡即可離婚"}']]
execute at @e[type=area_effect_cloud,tag=lobby,limit=1] run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["marry_event"]}
execute as @e[type=area_effect_cloud,tag=marry_event] run function favorability:marry/event/random
tag @a[tag=new_marry] remove new_marry