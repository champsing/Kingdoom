#---淨化---
effect clear @s blindness
effect clear @s poison
effect clear @s wither
effect clear @s nausea
effect clear @s slowness
particle spit ~ ~1 ~ 0 0.5 0 0 5 force @a
playsound entity.wandering_trader.disappeared ambient @a
scoreboard players set @s Dkit_cd 3000