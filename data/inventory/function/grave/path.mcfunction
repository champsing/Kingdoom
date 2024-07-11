execute as @e[type=villager,tag=Ginv,distance=..1,limit=1,sort=nearest] at @s run function inventory:grave/check
execute as @s[tag=!grave_path,distance=..6] positioned ^ ^ ^0.1 run function inventory:grave/path
tag @s[tag=grave_path] remove grave_path