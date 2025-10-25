summon area_effect_cloud ~ ~ ~ {WaitTime:0,Radius:0f,Duration:2147483647,Tags:["atm","atm1"]}
data modify entity @e[tag=atm1,limit=1,distance=..0.1] Rotation set from entity @s Rotation
function game:atm/1