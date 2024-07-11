summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["atm","atm2"]}
data modify entity @e[tag=atm2,limit=1,distance=..0.1] Rotation set from entity @s Rotation
function game:atm/2