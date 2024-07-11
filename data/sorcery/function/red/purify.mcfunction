tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"使用了"},{"text":"淨化巫術","color":"gold"}]
effect clear @a[team=red] glowing
effect clear @a[team=red] slowness
effect clear @a[team=red] weakness
effect clear @a[team=red] wither
effect clear @a[team=red] hunger
effect clear @a[team=red] blindness
effect clear @a[team=red] darkness
effect clear @a[team=red] nausea
effect clear @a[team=red] mining_fatigue
effect clear @a[team=red] poison
scoreboard players remove 紅隊靈魂 list 20
tag @s add sorcery_success