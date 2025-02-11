setblock ~ ~ ~-1 oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":['{"text":" ","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function start:grave/increase"}}','{"text":"增加墓碑時間","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"text":" ","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}','""']}} destroy
setblock ~ ~ ~ oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":['{"text":" ","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function start:random/choose"}}','{"text":"噴裝模式","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"text":"墓碑噴裝","bold":true,"clickEvent":{"action":"run_command","value":"playsound entity.player.attack.sweep ambient @s"}}','["",{"text":"墓碑時間: ","bold":true},{"score":{"name":"Ginv","objective":"setting"},"bold":true},{"text":"分鐘","bold":true}]']}} destroy
setblock ~ ~ ~1 oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":['{"text":" ","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function start:grave/decrease"}}','{"text":"減少墓碑時間","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"text":" ","clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}','""']}} destroy

scoreboard players set 噴裝模式 menu 0
scoreboard players display numberformat 噴裝模式 menu fixed {"text":"墓碑","color":"gold"}