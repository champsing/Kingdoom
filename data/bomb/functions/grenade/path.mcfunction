summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["grenade_cloud"]}
data modify entity @e[type=area_effect_cloud,tag=grenade_cloud,limit=1,sort=nearest] Owner set from entity @s Owner