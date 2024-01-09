summon creeper ~ ~ ~ {DeathLootTable:"minecraft:empty",Tags:["grenade_explode"],CustomName:'{"text":"手榴彈"}',ignited:1,ExplosionRadius:3,Fuse:0,Invulnerable:1b,Silent:1b}

execute if score @s UUID1 = @a[tag=Rspy,limit=1] UUID1 if score @s UUID2 = @a[tag=Rspy,limit=1] UUID2 if score @s UUID3 = @a[tag=Rspy,limit=1] UUID3 if score @s UUID4 = @a[tag=Rspy,limit=1] UUID4 run tag @e[tag=grenade_explode] add grenade_redspy

execute if score @s UUID1 = @a[tag=Bspy,limit=1] UUID1 if score @s UUID2 = @a[tag=Bspy,limit=1] UUID2 if score @s UUID3 = @a[tag=Bspy,limit=1] UUID3 if score @s UUID4 = @a[tag=Bspy,limit=1] UUID4 run tag @e[tag=grenade_explode] add grenade_bluespy

execute if score @s UUID1 = @a[tag=event15_beast,limit=1] UUID1 if score @s UUID2 = @a[tag=event15_beast,limit=1] UUID2 if score @s UUID3 = @a[tag=event15_beast,limit=1] UUID3 if score @s UUID4 = @a[tag=event15_beast,limit=1] UUID4 run data merge entity @e[tag=grenade_explode,limit=1] {ExplosionRadius:5}

kill @s