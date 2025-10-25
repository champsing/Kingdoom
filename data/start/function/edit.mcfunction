tag @e[type=area_effect_cloud,tag=lobby] remove setting_mode
tag @e[type=area_effect_cloud,tag=lobby] remove start_mode
tag @e[type=area_effect_cloud,tag=lobby] add edit_mode

team leave @a

scoreboard objectives setdisplay sidebar

execute as @e[tag=edit] run data merge entity @s {Marker:0b,Glowing:1b}

setblock ~ ~ ~ air
setblock ~5 ~ ~ air
fill ~2 ~2 ~ ~2 ~-1 ~-10 air

setblock ~5 ~ ~ oak_wall_sign[facing=north]{"is_waxed":true,"front_text":{"messages":[{"text":" ","click_event":{"action":"run_command","command":"execute if entity @s[gamemode=creative] run function edit:check"}},{"bold":true,"click_event":{"action":"run_command","command":'tellraw @s[gamemode=!creative] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你沒有權限"},{"text":"操作","color":"gold"}]"}'},"text":"退出編輯模式"},{"text":" ","click_event":{"action":"run_command","command":"playsound minecraft:entity.player.attack.sweep ambient @s"}},""]}}
setblock ~2 ~ ~-3 oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":[{"bold":true,"click_event":{"action":"run_command","command":"execute if entity @s[gamemode=creative] run function start:give"},"text":" "},{"click_event":{"action":"run_command","command":'tellraw @s[gamemode=!creative] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你沒有權限領取"},{"text":"編輯包","color":"gold"}]'},"text":"領取編輯包"},{"click_event":{"action":"run_command","command":"playsound minecraft:entity.player.attack.sweep ambient @s"},"text":" "},""]}}
setblock ~2 ~ ~-5 oak_wall_sign[facing=east]{"is_waxed":true,"front_text":{"messages":["",{"bold":true,"click_event":{"action":"run_command","command":"function edit:total"},"text":"查看場地平衡"},"",""]}}