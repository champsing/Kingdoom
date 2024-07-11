#---刺客任務---
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"刺客任務"},{"text":"結束","color":"gold"}]

tag @a[tag=event09] remove event09

function event:end