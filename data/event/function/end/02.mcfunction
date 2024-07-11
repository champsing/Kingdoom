#---自殺炸彈客結束---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"自殺炸彈客","color":"gold"},{"text":"已爆炸"}]
execute at @a[tag=event02,gamemode=survival] run summon creeper ~ ~ ~ {DeathLootTable:"minecraft:empty",CustomName:'{"text":"自殺炸彈客"}',ExplosionRadius:5,Fuse:0,Invulnerable:1b}
tag @a[tag=event02] remove event02

function event:end