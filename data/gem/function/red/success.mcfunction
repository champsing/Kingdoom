clear @s diamond[custom_data~{team:"red"}]
tag @s add Rgem_player
execute if items entity @s armor.head * run function gem:head
item replace entity @s armor.head with diamond[repair_cost=100,custom_name={"text":"紅隊寶石","color":"red","italic":false},custom_data={team:"red"}]