#---爆破---
effect give @s resistance 1 201 true
execute unless entity @a[tag=Dkit06,distance=..20] run summon creeper ~ ~ ~ {DeathLootTable:"minecraft:empty",CustomName:'{"text":"爆破技能"}',Fuse:1s,ignited:1b,ExplosionRadius:2}
scoreboard players set @s Akit_cd 4200