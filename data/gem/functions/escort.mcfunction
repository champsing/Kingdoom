execute as @a[team=!spec] store success score @s Rgem run clear @s diamond{team:"red"} 0
execute as @a[team=!spec] store success score @s Bgem run clear @s diamond{team:"blue"} 0
execute as @a[team=red,tag=!Rgem_player,scores={Rgem=1}] at @s run function gem:red/player
execute as @a[team=blue,tag=!Bgem_player,scores={Bgem=1}] at @s run function gem:blue/player
execute as @a[team=red,tag=!Bgem_player,scores={Bgem=1}] at @s run function gem:blue/player
execute as @a[team=blue,tag=!Rgem_player,scores={Rgem=1}] at @s run function gem:red/player
execute as @e[type=item,nbt={Item:{tag:{team:"red"}}},tag=!Rgem] run function gem:red/item
execute as @e[type=item,nbt={Item:{tag:{team:"blue"}}},tag=!Bgem] run function gem:blue/item
execute as @a[tag=Rgem_player] at @s if data entity @s Inventory[{id:"minecraft:diamond",tag:{team:"red"}}] unless data entity @s Inventory[{Slot:103b,id:"minecraft:diamond",tag:{team:"red"}}] run function gem:red/success
execute as @a[tag=Bgem_player] at @s if data entity @s Inventory[{id:"minecraft:diamond",tag:{team:"blue"}}] unless data entity @s Inventory[{Slot:103b,id:"minecraft:diamond",tag:{team:"blue"}}] run function gem:blue/success
execute at @e[type=item,nbt={Item:{id:"minecraft:diamond"}}] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace hopper
execute at @e[type=item,nbt={Item:{id:"minecraft:diamond"}}] run kill @e[type=hopper_minecart,distance=..2]
execute as @e[type=item,tag=Rgem,limit=1] at @s run function gem:red/disappearing
execute as @e[type=item,tag=Bgem,limit=1] at @s run function gem:blue/disappearing

execute at @e[team=red_edit,tag=kingspawn] as @a[tag=Bgem_player,distance=..3] run function gem:blue/escort
execute at @e[team=blue_edit,tag=kingspawn] as @a[tag=Rgem_player,distance=..3] run function gem:red/escort

execute as @a[team=!spec] store result score @s gem run clear @s diamond 0
execute as @a[scores={gem=1}] run function gem:effect