scoreboard players add 紅隊分數 list 1000

execute at @e[tag=Rtreasure] run summon shulker ~ ~ ~ {PortalCooldown:600,Tags:["Rtreasure_shulker","treasure_shulker"],Team:"red",Glowing:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:72000,show_particles:0b}]}

execute unless entity @e[tag=Rtreasure] run effect give @a[team=red,tag=Rking] glowing 30 0 true

tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"紅隊","color":"red"},{"text":"成功破壞"},{"text":"藍隊寶石","color":"blue"}]

playsound item.totem.use ambient @a ~ ~ ~

execute as @a[tag=Bking] at @s run function gem:blue/treasure/pickup