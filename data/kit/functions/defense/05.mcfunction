#---潛行---
tag @s add Dkit05
effect clear @s glowing
effect give @s invisibility 15 1
playsound entity.player.swim ambient @a
scoreboard players set @s Dkit_cd 3600

item replace entity @s enderchest.1 from entity @s armor.head
item replace entity @s enderchest.2 from entity @s armor.chest
item replace entity @s enderchest.3 from entity @s armor.legs
item replace entity @s enderchest.4 from entity @s armor.feet
item replace entity @s[scores={gem=1}] enderchest.1 with air

execute unless entity @s[scores={gem=1}] run item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air