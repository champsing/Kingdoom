scoreboard players remove @s rail_count 1
scoreboard players remove @a[tag=catch_rail,limit=1] rail_count 1
tellraw @s ["§6§l>> ",{"selector":"@a[tag=catch_rail,limit=1]"},"出軌被","§6發現","了, 你不再是",{"selector":"@a[tag=catch_rail,limit=1]"},"的","§6小三"]