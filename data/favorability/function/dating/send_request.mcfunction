tellraw @a[tag=ask_date_target,limit=1] ["§6§l>> ",{"selector":"@s"}," 想和你約會"]
tellraw @s ["§6§l>> ","成功送出","§6約會邀請",", 正在等待對方","§6回應"]
scoreboard players enable @a[tag=ask_date_target] date_feedback
execute if score @s fav_Rnum matches 1..100 run scoreboard players operation @a[tag=ask_date_target] date_feedback_red = @s fav_Rnum
execute if score @s fav_Bnum matches 1..100 run scoreboard players operation @a[tag=ask_date_target] date_feedback_blue = @s fav_Bnum
tellraw @a[tag=ask_date_target,limit=1] ["§6§l>> §r與 ",{"selector":"@s"}," 約會 ",{"text":"§a【答應】","clickEvent":{"action":"run_command","value":"/trigger date_feedback set 1"},"hoverEvent":{"action":"show_text","contents":["答應與 ",{"selector":"@s"}," 約會"]}}," ",{"text":"§c【拒絕】","clickEvent":{"action":"run_command","value":"/trigger date_feedback set 2"},"hoverEvent":{"action":"show_text","contents":["拒絕與 ",{"selector":"@s"}," 約會"]}}]