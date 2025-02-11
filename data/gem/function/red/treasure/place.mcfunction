setblock ~ ~ ~ diamond_block
summon marker ~ ~ ~ {Tags:["Rtreasure"],NoGravity:1b,Silent:1b,Invulnerable:1b}
kill @s

tag @a[team=red,tag=Rking] remove Rdrop
bossbar set red name ["",{"text":"紅隊國王: ","color":"red"},{"selector":"@a[tag=Rking]"}]
effect give @a[team=red,tag=Rking] health_boost infinite 4 true
tp @a[team=red,tag=Rking] @e[tag=kingspawn,team=red_edit,limit=1]