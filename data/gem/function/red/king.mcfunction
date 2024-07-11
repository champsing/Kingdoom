tag @s add Rdrop
bossbar set red name {"text":"紅隊寶石已掉落","color":"gold"}
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊寶石","color":"red"},{"text":"已從國王身上掉落"}]
function gem:red/spawn