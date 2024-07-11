summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1b},Tags:["gift"]}
data modify entity @e[type=item,limit=1,tag=gift] Item set from entity @s Inventory[{Slot:-106b}]
tellraw @a[tag=ask_gift_target,limit=1] ["§6§l>> ",{"selector":"@s"}," 送了你一份","§6禮物",", ",{"selector":"@e[type=item,limit=1,tag=gift]"}]
tag @e[tag=gift] remove gift
item replace entity @s weapon.offhand with air
tellraw @s ["§6§l>> ","送禮","§6成功",", 正在等待對方","§6回應"]

scoreboard players enable @a[tag=ask_gift_target] gift_feedback
execute if score @s fav_Rnum matches 1..100 run scoreboard players operation @a[tag=ask_gift_target] gift_feedback_red = @s fav_Rnum
execute if score @s fav_Bnum matches 1..100 run scoreboard players operation @a[tag=ask_gift_target] gift_feedback_blue = @s fav_Bnum
tellraw @a[tag=ask_gift_target,limit=1] ["§6§l>> §r回應 ",{"selector":"@s"}," 送的禮物 ",{"text":"§a【滿意】","clickEvent":{"action":"run_command","value":"/trigger gift_feedback set 1"},"hoverEvent":{"action":"show_text","contents":["滿意 ",{"selector":"@s"}," 送的禮物"]}}," ",{"text":"§c【不滿意】","clickEvent":{"action":"run_command","value":"/trigger gift_feedback set 2"},"hoverEvent":{"action":"show_text","contents":["不滿意 ",{"selector":"@s"}," 送的禮物"]}}]