execute as @e[type=area_effect_cloud,tag=edit_mode] run function tick:edit
execute as @e[type=area_effect_cloud,tag=setting_mode] run function tick:lobby
execute as @e[type=area_effect_cloud,tag=start_mode] run function tick:start

execute as @e[type=area_effect_cloud,tag=lobby] unless score 更新 list2 matches 8 run function start:reset