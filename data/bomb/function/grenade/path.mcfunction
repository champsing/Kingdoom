summon area_effect_cloud ~ ~ ~ {WaitTime:0,Radius:0f,Duration:2,Tags:["grenade_cloud"]}
data modify entity @n[type=area_effect_cloud,tag=grenade_cloud,limit=1] Owner set from entity @s Owner