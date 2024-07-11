tellraw @s ["§6§l>> ",{"selector":"@a[tag=ask_enemy_target,limit=1]"},"正在向其他玩家","§6結仇"]
tag @a[tag=ask_enemy_target] remove ask_enemy_target
tag @s remove enemy_asking