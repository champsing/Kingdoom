execute if score @s Dkit matches 11 run function kit:defense/01
execute if score @s Dkit matches 12 run function kit:defense/02
execute if score @s Dkit matches 13 run function kit:defense/03
execute if score @s Dkit matches 14 run function kit:defense/04
execute if score @s Dkit matches 15 run function kit:defense/05
execute if score @s Dkit matches 16 run function kit:defense/06
execute if score @s Dkit matches 17 run function kit:defense/07
execute if score @s Dkit matches 18 run function kit:defense/08
scoreboard players remove @s stamina 5
scoreboard players remove @s[tag=Rgem_player] stamina 15
scoreboard players remove @s[tag=Bgem_player] stamina 15
advancement revoke @s only kit:defense
recipe take @s shield