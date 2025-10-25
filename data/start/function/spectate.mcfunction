#---加入觀戰---
team join spec @s
gamemode spectator @s
effect give @s night_vision infinite 0 true
tp @s @e[tag=middle,limit=1]

scoreboard players enable @a[team=spec] join
tellraw @s ["",{"text":"§6§l>> "},{"text":"若想中途加入§6隊伍§r, 可點選下方按鈕\n"},{"text":"§c【加入紅隊】","click_event":{"action":"run_command","command":"/trigger join set 1"}},{"text":" "},{"text":"§9【加入藍隊】","click_event":{"action":"run_command","command":"/trigger join set 2"}}]

bossbar set red players @a
bossbar set blue players @a
tag @s add start