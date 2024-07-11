#---決鬥---
tag @a[tag=event18] remove event18
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"恭喜","color":"gold"},{"selector":"@s"},{"text":"贏了這場"},{"text":"決鬥","color":"gold"}]
advancement revoke @s only event:18
schedule function event:end/18 1t