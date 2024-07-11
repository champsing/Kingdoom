execute as @a[tag=!join] run function start:setting
execute as @a[scores={death=1}] at @s if entity @e[type=area_effect_cloud,tag=lobby,limit=1,distance=..0.1] run function start:death
execute as @a at @s if entity @s[y=-120,dy=50] run tp @s @e[type=area_effect_cloud,tag=lobby,limit=1]
execute store result score 玩家人數 menu if entity @a[team=!spec]
execute store result score 紅隊人數 menu if entity @a[team=red]
execute store result score 藍隊人數 menu if entity @a[team=blue]
kill @e[tag=shulker,nbt={PortalCooldown:0}]
execute as @e[type=armor_stand,tag=build] at @s if score @s sizey matches 1 if block ~ ~1 ~ redstone_block run setblock ~ ~1 ~ air