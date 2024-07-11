tellraw @s ["§6§l>> ","抓姦","§6失敗",", 你將一半的","§6財產","分給",{"selector":"@a[tag=catch_rail]"}]
tellraw @a[tag=catch_rail] ["§6§l>> ",{"selector":"@s"},"抓姦","§6失敗",", 因此將一半的","§6財產","分給你"]

scoreboard players operation @s money /= 一半 list2
scoreboard players operation @a[tag=catch_rail,limit=1] money += @s money

scoreboard players set #add fav_op -3