scoreboard players add @a[team=!spec,tag=!Rgem_player,tag=!Bgem_player] stamina 1
scoreboard players set @a[scores={stamina=101..}] stamina 100
schedule function stamina:regain 5s