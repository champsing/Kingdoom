gamemode survival @s
recipe take @s *
experience add @s -99999999 levels
scoreboard players set @s money 0
scoreboard players set @s armor 0
scoreboard players set @s sword 0
scoreboard players set @s axe 0
scoreboard players set @s pickaxe 0
scoreboard players set @s stamina 100
scoreboard players enable @s kit

execute store result score @s UUID1 run data get entity @s UUID[0]
execute store result score @s UUID2 run data get entity @s UUID[1]
execute store result score @s UUID3 run data get entity @s UUID[2]
execute store result score @s UUID4 run data get entity @s UUID[3]

give @s wooden_sword{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}
give @s stone_pickaxe{upgrade:2,HideFlags:4,Unbreakable:1b}
give @s wooden_axe{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.2,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}
give @s cooked_beef{display:{Lore:['{"text":"§7補充2%體力"}']}} 5

execute if entity @s[scores={join=1}] run team join red @s
execute if entity @s[scores={join=2}] run team join blue @s

execute as @s[team=red] at @e[team=red_edit,tag=spawn,limit=1,sort=random] run spawnpoint @s ~ ~ ~
execute as @s[team=blue] at @e[team=blue_edit,tag=spawn,limit=1,sort=random] run spawnpoint @s ~ ~ ~
tp @s[team=red] @e[team=red_edit,tag=spawn,limit=1,sort=random]
tp @s[team=blue] @e[team=blue_edit,tag=spawn,limit=1,sort=random]

execute if score 好感系統 menu matches 0 run function favorability:join/root

scoreboard players reset @s join