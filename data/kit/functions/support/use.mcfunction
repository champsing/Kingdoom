execute if score @s Skit matches 21 run function kit:support/01
execute if score @s Skit matches 22 run function kit:support/02
execute if score @s Skit matches 23 run function kit:support/03
execute if score @s Skit matches 24 run function kit:support/04
execute if score @s Skit matches 25 run function kit:support/05
execute if score @s Skit matches 26 run function kit:support/06
execute if score @s Skit matches 27 run function kit:support/07
execute if score @s Skit matches 28 run function kit:support/08
scoreboard players remove @s stamina 5
scoreboard players remove @s[tag=Rgem_player] stamina 15
scoreboard players remove @s[tag=Bgem_player] stamina 15
advancement revoke @s only kit:support
recipe take @s bow