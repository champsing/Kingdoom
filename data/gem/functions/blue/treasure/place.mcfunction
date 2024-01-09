setblock ~ ~ ~ diamond_block
summon marker ~ ~ ~ {Tags:["Btreasure"],NoGravity:1b,Silent:1b,Invulnerable:1b}
kill @s

tag @a[team=blue,tag=Bking] remove Bdrop
bossbar set blue name ["",{"text":"藍隊國王: ","color":"blue"},{"selector":"@a[tag=Bking]"}]
effect give @a[team=blue,tag=Bking] health_boost infinite 4 true
tp @a[team=blue,tag=Bking] @e[tag=kingspawn,team=blue_edit,limit=1]