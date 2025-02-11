kill @e[tag=shulker]
execute at @e[tag=build,team=red_edit] run summon shulker ~ ~ ~ {CustomNameVisible:1b,Tags:["shulker"],Team:"red_edit",NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,PortalCooldown:600,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b}
execute at @e[tag=build,team=blue_edit] run summon shulker ~ ~ ~ {CustomNameVisible:1b,Tags:["shulker"],Team:"blue_edit",NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,PortalCooldown:600,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b}
execute as @e[tag=shulker] at @s run data modify entity @s CustomName set from entity @n[tag=build,limit=1] ArmorItems[0].components.minecraft:custom_name
execute as @a at @s facing entity @n[tag=build,limit=1] feet run tp @s ~ ~ ~ ~ ~
playsound entity.experience_orb.pickup ambient @s ~ ~ ~