tellraw @s ["§6§l>> ",{"selector":"@a[tag=ask_marry_target,limit=1]"},"的求婚功能在","§6§6冷卻中"]
tag @a[tag=ask_marry_target] remove ask_marry_target
tag @s remove marry_asking