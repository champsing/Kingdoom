setblock ~ ~ ~ oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":['{"text":" ","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function start:soul/on"}}','{"text":"靈魂平衡","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"text":"關閉","bold":true,"clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}','""']}} destroy
scoreboard players reset soul setting
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"已關閉"},{"text":"靈魂平衡","color":"gold"}]