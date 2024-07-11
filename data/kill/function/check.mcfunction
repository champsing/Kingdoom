#---偵測殺人---
execute if entity @e[type=area_effect_cloud,tag=start_mode] run function kill:success
advancement revoke @s only kill:check