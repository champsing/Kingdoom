tellraw @s ["§6§l>> ",{"selector":"@a[tag=ask_date_target,limit=1]"},"正在回應其他玩家的","§6約會請求"]
tag @a[tag=ask_date_target] remove ask_date_target
tag @s remove date_asking