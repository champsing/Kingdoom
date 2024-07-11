tellraw @s ["§6§l>> ",{"selector":"@a[tag=ask_gift_target,limit=1]"},"正在向其他玩家","§6送禮"]
tag @a[tag=ask_gift_target] remove ask_gift_target
tag @s remove gift_asking