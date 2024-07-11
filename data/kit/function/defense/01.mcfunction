#---閃現---
scoreboard players add @s Dkit_score 1
execute as @s[scores={Dkit_score=1..8}] run particle dragon_breath ~ ~ ~ 0 0 0 0 10 force @a
execute unless block ~ ~ ~ air run scoreboard players set @s Dkit_score 9
execute as @s[scores={Dkit_score=..8}] positioned ^ ^ ^1 run function kit:defense/01
execute as @s[scores={Dkit_score=9..}] run function kit:end/d01