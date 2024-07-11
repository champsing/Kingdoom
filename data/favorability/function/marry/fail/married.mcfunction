tellraw @s ["§6§l>> ",{"selector":"@a[tag=ask_marry_target,limit=1]"},"已經和其他玩家","§6結婚"]
tag @a[tag=ask_marry_target] remove ask_marry_target
tag @s remove marry_asking