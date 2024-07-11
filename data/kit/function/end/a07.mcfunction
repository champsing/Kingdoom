#---瞄準---
scoreboard players add @s Akit_score 1
data merge entity @e[type=arrow,limit=1,sort=nearest,distance=..1.8] {Tags:["Akit07_arrow"],NoGravity:1b,PortalCooldown:100}

tag @s[scores={Akit_score=180}] remove Akit07
scoreboard players reset @s[scores={Akit_score=180}] Akit_score