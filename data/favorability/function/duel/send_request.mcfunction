tellraw @a[tag=ask_duel_target,limit=1] ["§6§l>> ",{"selector":"@s"}," 向你發出","§6決鬥"]
tellraw @s ["§6§l>> ","成功送出","§6決鬥挑戰",", 正在等待對方","§6回應"]
scoreboard players enable @a[tag=ask_duel_target] duel_feedback
execute if score @s fav_Rnum matches 1..100 run scoreboard players operation @a[tag=ask_duel_target] duel_feedback_red = @s fav_Rnum
execute if score @s fav_Bnum matches 1..100 run scoreboard players operation @a[tag=ask_duel_target] duel_feedback_blue = @s fav_Bnum
tellraw @a[tag=ask_duel_target,limit=1] ["§6§l>> §r與 ",{"selector":"@s"}," 決鬥 ",{"text":"§a【接受】","clickEvent":{"action":"run_command","value":"/trigger duel_feedback set 1"},"hoverEvent":{"action":"show_text","contents":["接受與 ",{"selector":"@s"}," 決鬥"]}}," ",{"text":"§c【拒絕】","clickEvent":{"action":"run_command","value":"/trigger duel_feedback set 2"},"hoverEvent":{"action":"show_text","contents":["拒絕與 ",{"selector":"@s"}," 決鬥"]}}]