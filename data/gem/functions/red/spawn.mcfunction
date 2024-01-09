summon item ~ ~ ~ {Tags:["Rgem"],Age:-32768,CustomNameVisible:1b,Invulnerable:1b,Glowing:1b,PickupDelay:50,CustomName:'{"text":"紅隊寶石","color":"red"}',Item:{id:"minecraft:diamond",Count:1b,tag:{team:"red",RepairCost:100,display:{Name:'{"text":"紅隊寶石","color":"red","italic":false}'}}}}
team join red @e[type=item,tag=Rgem,distance=..1]
tag @s remove Rgem_player