#---征稅---
execute as @a[team=!spec] run scoreboard players operation @s Kkit_score = @s money
execute as @a[team=!spec] run scoreboard players operation @s Kkit_score /= 征稅 list2
execute as @a[team=!spec] run scoreboard players operation @s money -= @s Kkit_score
scoreboard players operation @s money += @a[team=!spec] Kkit_score

playsound entity.player.levelup ambient @a
scoreboard players set @s Kkit_cd 3000