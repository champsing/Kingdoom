tellraw @a ["§6§l>> ",{"selector":"@s"},"在決鬥中","§6勝出",", ",{"selector":"@a[tag=fav_killed]"},"將一半的","§6財產","分給",{"selector":"@s"}]
scoreboard players operation @a[tag=fav_killed] money /= 一半 list2
scoreboard players operation @s money += @a[tag=fav_killed] money

scoreboard players reset @s duel_pair
scoreboard players reset @a[tag=fav_killed] duel_pair