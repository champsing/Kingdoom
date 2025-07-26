setblock ~ ~ ~ oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":[{"text":" ","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function start:king/off"}},{"text":"隨機國王","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}},{"text":"開啟","bold":true,"clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}},""]}} destroy
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"已開啟"},{"text":"隨機國王","color":"gold"}]
setblock ~ ~ ~-1 air
setblock ~ ~ ~1 air
tag @a[tag=Rking] remove Rking
tag @a[tag=Bking] remove Bking