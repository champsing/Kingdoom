execute store success score @s bag_weapon run clear @s jukebox[custom_data~{bag:"weapon"}] 1
execute store success score @s bag_tool run clear @s jukebox[custom_data~{bag:"tool"}] 1
execute store success score @s bag_armor run clear @s jukebox[custom_data~{bag:"armor"}] 1
execute as @s[scores={bag_weapon=1}] run function upgrade:bag/weapon
execute as @s[scores={bag_tool=1}] run function upgrade:bag/tool
execute as @s[scores={bag_armor=1}] run function upgrade:bag/armor