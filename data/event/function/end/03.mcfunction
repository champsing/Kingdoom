#---炸彈結束---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"炸彈","color":"gold"},{"text":"已爆炸"}]
execute at @a[tag=event03,gamemode=survival] run summon creeper ~ ~ ~ {DeathLootTable:"minecraft:empty",CustomName:'{"text":"定時炸彈"}',ExplosionRadius:3,Fuse:0,Invulnerable:1b}
tag @a[tag=event03] remove event03

function event:end