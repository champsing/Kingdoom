tellraw @s ["§6§l>> ",{"selector":"@a[tag=ask_duel_target,limit=1]"},"正在向其他玩家","§6發起決鬥"]
tag @a[tag=ask_duel_target] remove ask_duel_target
tag @s remove duel_asking