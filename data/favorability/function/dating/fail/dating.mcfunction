tellraw @s ["§6§l>> ",{"selector":"@a[tag=ask_date_target,limit=1]"},"正在和其他玩家","§6約會"]
tag @a[tag=ask_date_target] remove ask_date_target
tag @s remove date_asking