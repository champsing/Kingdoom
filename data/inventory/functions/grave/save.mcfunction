summon armor_stand ~ ~ ~ {Tags:["grave_name","grave_setname"],CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,DisabledSlots:63}

data modify entity @e[tag=grave_setname,limit=1,sort=nearest,distance=..1] CustomName set from entity @s ArmorItems[3].tag.display.Name
execute store result entity @s PortalCooldown int 1200 run scoreboard players get Ginv setting

effect give @s invisibility infinite 0 true
tag @s remove grave
tag @e[tag=grave_setname] remove grave_setname