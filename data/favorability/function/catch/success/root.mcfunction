tellraw @s ["§6§l>> ","抓姦","§6成功",", ",{"selector":"@a[tag=catch_rail]"},"將所有","§6財產","分給你"]
tellraw @a[tag=catch_rail] ["§6§l>> ",{"selector":"@s"},"抓姦","§6成功",", 因此你將所有","§6財產","分給",{"selector":"@s"}]

scoreboard players operation @s money += @a[tag=catch_rail,limit=1] money
scoreboard players set @a[tag=catch_rail,limit=1] money 0

execute if entity @a[tag=catch_rail,scores={fav_Rnum=1..100}] as @a[scores={rail_red=1..}] if score @s rail_red = @a[tag=catch_rail,limit=1] fav_Rnum run function favorability:catch/success/red
execute if entity @a[tag=catch_rail,scores={fav_Bnum=1..100}] as @a[scores={rail_blue=1..}] if score @s rail_blue = @a[tag=catch_rail,limit=1] fav_Bnum run function favorability:catch/success/blue

tellraw @a[tag=catch_rail,limit=1] ["§6§l>> ","所有的","§6小三","都與你","§6斷絕了","關係"]

scoreboard players set #add fav_op -30