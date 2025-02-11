summon item ~ ~0.2 ~ {Item:{id:"prismarine",count:1},PortalCooldown:40,Invulnerable:1b,PickupDelay:32767,Age:-32768,Tags:["grenade","grenade_uuid"]}
execute store result score @n[tag=grenade_uuid,type=item,limit=1] UUID1 run data get entity @s Owner[0]
execute store result score @n[tag=grenade_uuid,type=item,limit=1] UUID2 run data get entity @s Owner[1]
execute store result score @n[tag=grenade_uuid,type=item,limit=1] UUID3 run data get entity @s Owner[2]
execute store result score @n[tag=grenade_uuid,type=item,limit=1] UUID4 run data get entity @s Owner[3]
tag @n[tag=grenade_uuid,type=item,limit=1] remove grenade_uuid
kill @s