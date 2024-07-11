scoreboard players remove @s[scores={sword=1..}] sword 1
scoreboard players remove @s[scores={armor=1..}] armor 1
scoreboard players remove @s[scores={pickaxe=1..}] pickaxe 1
scoreboard players remove @s[scores={axe=1..}] axe 1
tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已死亡"},{"text":"10次","color":"gold"},{"text":", 你的裝備已下降一級"}]
scoreboard players reset @s downgrade