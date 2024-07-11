summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["atm","atm3"]}
data modify entity @e[tag=atm3,limit=1,distance=..0.1] Rotation set from entity @s Rotation
function game:atm/3