tag @s add Bdrop
bossbar set blue name {"text":"藍隊寶石已掉落","color":"gold"}
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊寶石","color":"blue"},{"text":"已從國王身上掉落"}]
function gem:blue/spawn