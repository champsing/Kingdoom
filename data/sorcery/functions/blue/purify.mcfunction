tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"使用了"},{"text":"淨化巫術","color":"gold"}]
effect clear @a[team=blue] glowing
effect clear @a[team=blue] slowness
effect clear @a[team=blue] weakness
effect clear @a[team=blue] wither
effect clear @a[team=blue] hunger
effect clear @a[team=blue] blindness
effect clear @a[team=blue] darkness
effect clear @a[team=blue] nausea
effect clear @a[team=blue] mining_fatigue
effect clear @a[team=blue] poison
scoreboard players remove 藍隊靈魂 list 20
tag @s add sorcery_success