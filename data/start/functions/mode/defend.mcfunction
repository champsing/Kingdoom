setblock ~ ~ ~ oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":['{"text":" ","clickEvent":{"action":"run_command","value":"execute if entity @s[gamemode=creative] run function start:mode/treasure"}}','{"text":"遊戲模式","bold":true,"clickEvent":{"action":"run_command","value":"tellraw @s[gamemode=!creative] [\\"\\",{\\"text\\":\\">> \\",\\"bold\\":true,\\"color\\":\\"gold\\"},{\\"text\\":\\"你沒有權限\\"},{\\"text\\":\\"操作\\",\\"color\\":\\"gold\\"}]"}}','{"text":"捍衛模式","bold":true,"clickEvent":{"action":"run_command","value":"playsound minecraft:entity.player.attack.sweep ambient @s"}}','""']}} destroy

scoreboard players reset 護送模式 menu
scoreboard players reset 尋寶模式 menu
scoreboard players set 捍衛模式 menu 0

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"捍衛模式: ","color":"gold"},{"text":"拿著敵方寶石即每秒加5分直到滿1000分, 敵方持續獲得力量 I"}]