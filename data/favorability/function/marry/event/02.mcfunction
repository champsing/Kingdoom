execute as @a[tag=new_marry] run scoreboard players operation #marry_seperate money += @s money
scoreboard players operation #marry_seperate money /= 一半 list2
scoreboard players set @a[tag=new_marry] money 0
scoreboard players operation @a[tag=new_marry] money += #marry_seperate money
scoreboard players reset #marry_seperate money

tellraw @a ["§6§l>> ","恭喜",{"selector":"@a[tag=new_marry]","separator":{"text":"和"}},"§6結婚",", 兩人","§6財產","均分"]