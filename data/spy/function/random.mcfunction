execute store result score @s spy run data get entity @s UUID[0]
scoreboard players operation @s spy %= 最大值 spy
scoreboard players operation @a[team=red,tag=Rspy] spy = @s spy
scoreboard players operation @a[team=blue,tag=Bspy] spy = @s spy

execute if score @s spy matches 0 run function spy:mission/00
execute if score @s spy matches 1 run function spy:mission/01
execute if score @s spy matches 2 run function spy:mission/02
execute if score @s spy matches 3 run function spy:mission/03
execute if score @s spy matches 4 run function spy:mission/04
execute if score @s spy matches 5 run function spy:mission/05
execute if score @s spy matches 6 run function spy:mission/06
execute if score @s spy matches 7 run function spy:mission/07
execute if score @s spy matches 8 run function spy:mission/08

kill @s