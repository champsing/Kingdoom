tag @s add Bdrop
effect clear @s health_boost

execute if data entity @s Inventory[{Slot:-106b}] run summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1b},Tags:["gem_offhand"]}
data modify entity @e[type=item,limit=1,distance=..0.3,tag=gem_offhand] Item set from entity @s Inventory[{Slot:-106b}]
tag @e[tag=gem_offhand] remove gem_offhand
item replace entity @s weapon.offhand with allay_spawn_egg[repair_cost=100,custom_name='{"text":"藍隊寶石","color":"blue","italic":false}',entity_data={id:"allay",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["Btreasure_egg"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1200,show_particles:0b}]},custom_data={team:"blue"}] 1
scoreboard players set @s gem_place 1

bossbar set blue name {"text":"藍隊寶石尚未被放置","color":"gold"}
execute if score @s gem_treasure matches 1.. run tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"text":"藍隊寶石","color":"blue"},{"text":"已被拿起"}]

kill @e[tag=Btreasure]