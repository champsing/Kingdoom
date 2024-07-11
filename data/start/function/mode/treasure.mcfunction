setblock ~ ~ ~ oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":['{"text":" ","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function start:mode/escort"}}','{"text":"遊戲模式","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"text":"尋寶模式","bold":true,"clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}','""']}} destroy

scoreboard players reset 護送模式 menu
scoreboard players reset 捍衛模式 menu
scoreboard players set 尋寶模式 menu 0

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"尋寶模式: ","color":"gold"},{"text":"國王自行選擇寶石的位置, 擊殺國王後寶石發光30秒, 挖掘敵方寶石+1000分, 敵方獲得1分鐘力量 II"}]