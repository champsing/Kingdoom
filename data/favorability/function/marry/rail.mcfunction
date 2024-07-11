tag @s add divorce_rail

execute if entity @s[scores={fav_Rnum=1..100}] as @a[scores={rail_red=1..}] if score @s rail_red = @a[tag=divorce_rail,limit=1] fav_Rnum run function favorability:marry/rail/red
execute if entity @s[scores={fav_Bnum=1..100}] as @a[scores={rail_blue=1..}] if score @s rail_blue = @a[tag=divorce_rail,limit=1] fav_Bnum run function favorability:marry/rail/blue

tellraw @s ["§6§l>> ","所有的","§6小三","都與你","§6斷絕了","關係"]

tag @s remove divorce_rail