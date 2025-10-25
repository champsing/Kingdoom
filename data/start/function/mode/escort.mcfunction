setblock ~ ~ ~ oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":[{"text":" ","click_event":{"action":"run_command","command":"execute if entity @s[gamemode=creative] run function start:mode/defend"}},{"text":"遊戲模式","bold":true,"click_event":{"action":"run_command","command":'tellraw @s[gamemode=!creative] {"action":"run_command","value":"tellraw @s[gamemode=!creative] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你沒有權限"},{"text":"操作","color":"gold"}]"}'}},{"text":"護送模式","bold":true,"click_event":{"action":"run_command","command":"playsound minecraft:entity.player.attack.sweep ambient @s"}},""]}} destroy

scoreboard players set 遊戲模式 menu 0
scoreboard players display numberformat 遊戲模式 menu fixed {"text":"護送","color":"gold"}

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"護送模式: ","color":"gold"},{"text":"把敵方寶石送至國王重生點即獲得1000分, 敵方獲得30秒力量 III"}]