setblock ~ ~ ~ oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":['{"text":" ","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function start:favorability/off"}}','{"text":"好感系統","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"text":"開啟","bold":true,"clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}','""']}} destroy
scoreboard players set 好感系統 menu 0
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"已開啟"},{"text":"好感系統","color":"gold"}]