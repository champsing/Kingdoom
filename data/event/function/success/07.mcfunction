#---殺人懲罰---
scoreboard players set @s[scores={money=..9}] money 0
scoreboard players remove @s[scores={money=10..}] money 10
effect give @s slowness 5 1 true
effect give @s hunger 5 30 true
effect give @s wither 5 2 true
playsound entity.evoker.death ambient @s
scoreboard players reset @s event_kill