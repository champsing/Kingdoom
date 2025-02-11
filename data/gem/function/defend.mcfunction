execute as @a[team=!spec] store success score @s Rgem run clear @s diamond[custom_data~{team:"red"}] 0
execute as @a[team=!spec] store success score @s Bgem run clear @s diamond[custom_data~{team:"blue"}] 0
execute as @a[team=red,tag=!Rgem_player,scores={Rgem=1}] at @s run function gem:red/player
execute as @a[team=blue,tag=!Bgem_player,scores={Bgem=1}] at @s run function gem:blue/player
execute as @a[team=red,tag=!Bgem_player,scores={Bgem=1}] at @s run function gem:blue/player
execute as @a[team=blue,tag=!Rgem_player,scores={Rgem=1}] at @s run function gem:red/player
execute as @e[type=item,tag=!Rgem] if items entity @s contents diamond[custom_data~{team:"red"}] run function gem:red/item
execute as @e[type=item,tag=!Bgem] if items entity @s contents diamond[custom_data~{team:"blue"}] run function gem:blue/item
execute as @a[tag=Rgem_player] at @s if items entity @s container.* diamond[custom_data~{team:"red"}] unless items entity @s armor.head diamond[custom_data~{team:"red"}] run function gem:red/success
execute as @a[tag=Bgem_player] at @s if items entity @s container.* diamond[custom_data~{team:"blue"}] unless items entity @s armor.head diamond[custom_data~{team:"blue"}] run function gem:blue/success
execute as @e[type=item] at @s if items entity @s contents diamond run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace hopper
execute as @e[type=item] at @s if items entity @s contents diamond run kill @e[type=hopper_minecart,distance=..2]
execute as @e[type=item,tag=Rgem,limit=1] at @s run function gem:red/disappearing
execute as @e[type=item,tag=Bgem,limit=1] at @s run function gem:blue/disappearing

execute as @a[team=red,tag=Bgem_player] run function gem:blue/defend
execute as @a[team=blue,tag=Rgem_player] run function gem:red/defend

execute as @a[team=!spec] store result score @s gem run clear @s diamond 0
execute as @a[scores={gem=1}] run function gem:effect

