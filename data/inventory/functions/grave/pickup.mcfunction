tag @s add grave_pickup

execute anchored eyes run function inventory:grave/path

tellraw @s[tag=grave_fail] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你無法挖開"},{"text":"墓碑","color":"gold"}]
tag @s remove grave_fail
tag @s remove grave_pickup
advancement revoke @s only inventory:pickup