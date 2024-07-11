tag @s add enemier
execute as @a[tag=!enemier,team=!spec] if score @s enemy_pair = @a[tag=enemier,limit=1] enemy_pair run tag @s add enemied

tellraw @s ["§6§l>> ","你比",{"selector":"@a[tag=enemied]"},"早","§6死亡",", 你讓敵方獲得","§6100分"]
tellraw @a[tag=enemied] ["§6§l>> ","你的宿敵",{"selector":"@s"},"已","§6死亡",", ",{"selector":"@s"},"的敵方獲得了","§6100分"]

execute if entity @s[team=red] run scoreboard players add 藍隊分數 list 100
execute if entity @s[team=blue] run scoreboard players add 紅隊分數 list 100

scoreboard players reset @s enemy_pair
scoreboard players reset @a[tag=enemied] enemy_pair
tag @a[tag=enemied] remove enemied
tag @s remove enemier