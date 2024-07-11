scoreboard players add 藍隊分數 list 1000

execute at @e[tag=Btreasure] run summon shulker ~ ~ ~ {PortalCooldown:600,Tags:["Btreasure_shulker","treasure_shulker"],Team:"blue",Glowing:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:72000,show_particles:0b}]}

execute unless entity @e[tag=Btreasure] run effect give @a[team=blue,tag=Bking] glowing 30 0 true

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊","color":"blue"},{"text":"成功破壞"},{"text":"紅隊寶石","color":"red"}]

playsound item.totem.use ambient @a ~ ~ ~

execute as @a[tag=Rking] at @s run function gem:red/treasure/pickup