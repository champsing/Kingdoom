setblock ~ ~ ~ oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":['{"text":" ","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function start:king/on"}}','{"text":"隨機國王","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"text":"關閉","bold":true,"clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}','""']}} destroy
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"已關閉"},{"text":"隨機國王","color":"gold"}]
setblock ~ ~ ~1 oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":['{"text":" ","clickEvent":{"action":"run_command","value":"function start:king/red"}}','{"text":"紅隊國王","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}','{"text":"隨機","bold":true}','""']}}
setblock ~ ~ ~-1 oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":['{"text":" ","clickEvent":{"action":"run_command","value":"function start:king/blue"}}','{"text":"藍隊國王","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}','{"text":"隨機","bold":true}','""']}}