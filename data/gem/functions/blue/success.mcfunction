clear @s diamond{team:"blue"}
tag @s add Bgem_player
execute if data entity @s Inventory[{Slot:103b}] run function gem:head
item replace entity @s armor.head with diamond{team:"blue",RepairCost:100,display:{Name:'{"text":"藍隊寶石","color":"blue","italic":false}'}}