#---飢荒---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"旱季"},{"text":"來臨","color":"gold"},{"text":", 全體"},{"text":"飢餓","color":"gold"},{"text":"和食物被清除"}]
title @a title ["",{"text":"旱季","bold":true},{"text":"來臨","color":"gold","bold":true}]
title @a subtitle ["",{"text":"全體","bold":true},{"text":"飢餓","color":"gold","bold":true},{"text":"和食物被清除","bold":true}]

clear @a cooked_beef
clear @a golden_apple
clear @a carrot
clear @a melon_slice
effect give @a[team=!spec] hunger 2 50 true
execute as @a at @s run playsound entity.player.burp ambient @s