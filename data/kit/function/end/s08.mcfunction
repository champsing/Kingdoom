#---出竅---
tag @s add soul_end
execute as @a[tag=Skit08] if score @s Skit_score = @n[type=area_effect_cloud,tag=soul_end,limit=1] Skit_score run tag @s add Skit08_end
tp @a[tag=Skit08_end] @s
scoreboard players reset @a[tag=Skit08_end] Skit_score
gamemode survival @a[tag=Skit08_end]
tag @a[tag=Skit08_end] remove Skit08
tag @a[tag=Skit08_end] remove Skit08_end

kill @s