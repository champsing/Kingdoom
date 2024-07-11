tellraw @s ["§6§l>> ",{"selector":"@a[tag=ask_date_target,limit=1]"},"正在向其他玩家提出","§6約會請求"]
tag @a[tag=ask_date_target] remove ask_date_target
tag @s remove date_asking