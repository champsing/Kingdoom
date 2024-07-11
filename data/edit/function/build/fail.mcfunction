execute as @s[tag=Abuild] run tellraw @p ["",{"text":">> ","bold":true,"color":"gold"},{"text":"設定"},{"text":"失敗","color":"gold"},{"text":", 目前已存在設定中的建築物點"}]
execute as @s[tag=Bbuild] run tellraw @p ["",{"text":">> ","bold":true,"color":"gold"},{"text":"設定"},{"text":"失敗","color":"gold"},{"text":", 目前不存在設定中的建築物點"}]
kill @s