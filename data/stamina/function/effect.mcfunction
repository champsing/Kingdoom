scoreboard players set @s[scores={stamina=..-1}] stamina 0

effect give @s[scores={stamina=30..39}] mining_fatigue 1 0 true
effect give @s[scores={stamina=20..29}] mining_fatigue 1 1 true
effect give @s[scores={stamina=10..19}] mining_fatigue 1 2 true
effect give @s[scores={stamina=0..9}] mining_fatigue 1 3 true

effect give @s[scores={stamina=20..29}] slowness 1 0 true
effect give @s[scores={stamina=10..19}] slowness 1 1 true
effect give @s[scores={stamina=0..9}] slowness 1 2 true

effect give @s[scores={stamina=6..10}] wither 2 0 true
effect give @s[scores={stamina=1..5}] wither 2 1 true
effect give @s[scores={stamina=0}] wither 2 2 true