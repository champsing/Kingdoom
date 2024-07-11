tellraw @s ["§6§l>> ",{"selector":"@a[tag=ask_enemy_target,limit=1]"},"正在回應其他玩家的","§6結仇請求"]
tag @a[tag=ask_enemy_target] remove ask_enemy_target
tag @s remove enemy_asking