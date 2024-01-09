clear @s diamond{team:"red"}
tag @s add Rgem_player
execute if data entity @s Inventory[{Slot:103b}] run function gem:head
item replace entity @s armor.head with diamond{team:"red",RepairCost:100,display:{Name:'{"text":"紅隊寶石","color":"red","italic":false}'}}