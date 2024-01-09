kill @e[tag=shulker]
execute at @e[tag=middle] run summon shulker ~ ~ ~ {Tags:["shulker"],NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,PortalCooldown:600,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:600,ShowParticles:0b}]}
execute as @a at @s facing entity @e[tag=middle,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
playsound entity.experience_orb.pickup ambient @s ~ ~ ~