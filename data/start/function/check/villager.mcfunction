kill @e[tag=shulker]
execute at @e[tag=shop] run summon shulker ~ ~ ~ {Tags:["shulker"],NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,PortalCooldown:600,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:600,show_particles:0b}]}
execute as @a at @s facing entity @n[tag=shop,limit=1] feet run tp @s ~ ~ ~ ~ ~
playsound entity.experience_orb.pickup ambient @s ~ ~ ~