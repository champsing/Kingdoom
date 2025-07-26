clear @s diamond[custom_data~{team:"blue"}]
tag @s add Bgem_player
execute if data entity @s Inventory[{Slot:103b}] run function gem:head
item replace entity @s armor.head with diamond[repair_cost=100,custom_name={"text":"藍隊寶石","color":"blue","italic":false},custom_data={team:"blue"}]