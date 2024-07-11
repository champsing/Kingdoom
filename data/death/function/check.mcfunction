#---偵測死亡---
execute if entity @e[type=area_effect_cloud,tag=start_mode] if entity @s[scores={death=1}] run function death:success
advancement revoke @s only death:check