scoreboard players operation attacker forge_attack = @s forge_attack
execute as @a[team=!spec] if score @s forge_hurt = attacker forge_attack run tag @s add forge_hurt

execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"stamina"}}}] run function forge:effect/stamina
execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"poison"}}}] run function forge:effect/poison
execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"glowing"}}}] run function forge:effect/glowing
execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"leeching"}}}] run function forge:effect/leeching
execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"hunger"}}}] run function forge:effect/hunger
execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"weakness"}}}] run function forge:effect/weakness
execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"wither"}}}] run function forge:effect/wither
execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"chain"}}}] at @a[tag=forge_hurt] run function forge:effect/chain
execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"critical"}}}] run function forge:effect/critical
execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"stunning"}}}] run function forge:effect/stunning
execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"gravity"}}}] run function forge:effect/gravity

execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"explode"}}}] if entity @a[tag=forge_hurt,scores={death=1..}] at @a[tag=forge_hurt] run function forge:effect/explode
execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"rampaging"}}}] if entity @a[tag=forge_hurt,scores={death=1..}] run function forge:effect/rampaging
execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"soul"}}}] if entity @a[tag=forge_hurt,scores={death=1..}] run function forge:effect/soul
execute if entity @s[nbt={SelectedItem:{tag:{ForgeEffect:"looting"}}}] if entity @a[tag=forge_hurt,scores={death=1..}] at @a[tag=forge_hurt] run function forge:effect/looting

scoreboard players set attack forge_attack 0
scoreboard players set hurt forge_hurt 0
scoreboard players reset @s forge_attack
scoreboard players reset @a[tag=forge_hurt] forge_hurt
tag @a[tag=forge_hurt] remove forge_hurt