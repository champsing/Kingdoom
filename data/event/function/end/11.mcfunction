#---靈魂交換---
execute at @a[gamemode=survival,tag=Rking] run summon armor_stand ~ ~ ~ {Tags:[Revent11,event11],Invisible:1,Invulnerable:1}
execute at @a[gamemode=survival,tag=Bking] run summon armor_stand ~ ~ ~ {Tags:[Bevent11,event11],Invisible:1,Invulnerable:1}
tp @e[type=armor_stand,tag=Revent11,limit=1] @a[tag=Rking,limit=1]
tp @e[type=armor_stand,tag=Bevent11,limit=1] @a[tag=Bking,limit=1]
tp @a[gamemode=survival,tag=Bking,limit=1] @e[type=armor_stand,tag=Revent11,limit=1]
tp @a[gamemode=survival,tag=Rking,limit=1] @e[type=armor_stand,tag=Bevent11,limit=1]
kill @e[tag=event11]

function event:end