tellraw @a[tag=ask_rail_target,limit=1] ["§6§l>> ",{"selector":"@s"}," 想要你當","§6小三"]
tellraw @s ["§6§l>> ","成功送出","§6邀請",", 正在等待對方","§6回應"]
scoreboard players enable @a[tag=ask_rail_target] rail_feedback
execute if score @s fav_Rnum matches 1..100 run scoreboard players operation @a[tag=ask_rail_target] rail_feedback_red = @s fav_Rnum
execute if score @s fav_Bnum matches 1..100 run scoreboard players operation @a[tag=ask_rail_target] rail_feedback_blue = @s fav_Bnum
tellraw @a[tag=ask_rail_target,limit=1] ["§6§l>> §r當 ",{"selector":"@s"}," 的小三 ",{"text":"§a【答應】","click_event":{"action":"run_command","command":"/trigger rail_feedback set 1"},"hover_event":{"action":"show_text","value":["答應當 ",{"selector":"@s"}," 的小三"]}}," ",{"text":"§c【拒絕】","click_event":{"action":"run_command","command":"/trigger rail_feedback set 2"},"hover_event":{"action":"show_text","value":["拒絕當 ",{"selector":"@s"}," 的小三"]}}]