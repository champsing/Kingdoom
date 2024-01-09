scoreboard players set @s build 1
scoreboard players set @s build_cd 400
execute if entity @s[team=red_edit] run function build:red
execute if entity @s[team=blue_edit] run function build:blue