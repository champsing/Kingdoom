execute if score @s Akit matches 1 run function kit:attack/01
execute if score @s Akit matches 2 run function kit:attack/02
execute if score @s Akit matches 3 run function kit:attack/03
execute if score @s Akit matches 4 run function kit:attack/04
execute if score @s Akit matches 5 run function kit:attack/05
execute if score @s Akit matches 6 run function kit:attack/06
execute if score @s Akit matches 7 run function kit:attack/07
execute if score @s Akit matches 8 run function kit:attack/08
scoreboard players remove @s stamina 5
scoreboard players remove @s[tag=Rgem_player] stamina 15
scoreboard players remove @s[tag=Bgem_player] stamina 15
advancement revoke @s only kit:attack
recipe take @s diamond_sword