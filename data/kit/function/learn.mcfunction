tellraw @s[scores={kit=1..8,Akit=1..8}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你無法學習"},{"text":"攻擊型技能","color":"gold"}]
execute if score @s kit matches 1..8 unless score @s Akit matches 1..8 run function kit:attack/learn

tellraw @s[scores={kit=11..18,Dkit=11..18}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你無法學習"},{"text":"防禦型技能","color":"gold"}]
execute if score @s kit matches 11..18 unless score @s Dkit matches 11..18 run function kit:defense/learn

tellraw @s[scores={kit=21..28,Skit=21..28}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你無法學習"},{"text":"支援型技能","color":"gold"}]
execute if score @s kit matches 21..28 unless score @s Skit matches 21..28 run function kit:support/learn

tellraw @s[tag=!Rking,tag=!Bking,scores={kit=31..36}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你無法學習"},{"text":"國王技能","color":"gold"}]
tellraw @s[scores={kit=31..36,Kkit=31..36}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你無法學習"},{"text":"國王技能","color":"gold"}]
execute if score @s[tag=Rking] kit matches 31..36 unless score @s Kkit matches 31..36 run function kit:king/learn
execute if score @s[tag=Bking] kit matches 31..36 unless score @s Kkit matches 31..36 run function kit:king/learn

execute if score @s kit matches 9 run function kit:attack/reset
execute if score @s kit matches 19 run function kit:defense/reset
execute if score @s kit matches 29 run function kit:support/reset
execute if score @s kit matches 37 run function kit:king/reset