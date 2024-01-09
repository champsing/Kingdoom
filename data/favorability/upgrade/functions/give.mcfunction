execute unless data entity @s[scores={sword=0}] Inventory[{id:"minecraft:wooden_sword"}] run give @s wooden_sword{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}
execute unless data entity @s[scores={sword=1}] Inventory[{id:"minecraft:stone_sword"}] run give @s stone_sword{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}
execute unless data entity @s[scores={sword=2}] Inventory[{id:"minecraft:iron_sword"}] run give @s iron_sword{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}
execute unless data entity @s[scores={sword=3}] Inventory[{id:"minecraft:diamond_sword"}] run give @s diamond_sword{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}

execute unless data entity @s[scores={pickaxe=0}] Inventory[{id:"minecraft:stone_pickaxe"}] run give @s stone_pickaxe{upgrade:2,HideFlags:4,Unbreakable:1b}
execute unless data entity @s[scores={pickaxe=1}] Inventory[{id:"minecraft:iron_pickaxe"}] run give @s iron_pickaxe{upgrade:2,HideFlags:4,Unbreakable:1b}
execute unless data entity @s[scores={pickaxe=2}] Inventory[{id:"minecraft:diamond_pickaxe"}] run give @s diamond_pickaxe{upgrade:2}
execute unless data entity @s[scores={pickaxe=3}] Inventory[{id:"minecraft:netherite_pickaxe"}] run give @s netherite_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:2s}],upgrade:2}

execute unless data entity @s[scores={axe=0}] Inventory[{id:"minecraft:wooden_axe"}] run give @s wooden_axe{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.2,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}
execute unless data entity @s[scores={axe=1}] Inventory[{id:"minecraft:stone_axe"}] run give @s stone_axe{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.2,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}
execute unless data entity @s[scores={axe=2}] Inventory[{id:"minecraft:iron_axe"}] run give @s iron_axe{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.1,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}
execute unless data entity @s[scores={axe=3}] Inventory[{id:"minecraft:diamond_axe"}] run give @s diamond_axe{upgrade:2,forge:0,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;-1,-1,-1,-1],Slot:"mainhand"}]}

execute unless data entity @s[scores={armor=1}] Inventory[{id:"minecraft:leather_helmet"}] run item replace entity @s[tag=!Rking,tag=!Bking] armor.head with leather_helmet{upgrade:2}
execute unless data entity @s[scores={armor=1}] Inventory[{id:"minecraft:leather_chestplate"}] run item replace entity @s armor.chest with leather_chestplate{upgrade:2}
execute unless data entity @s[scores={armor=1}] Inventory[{id:"minecraft:leather_leggings"}] run item replace entity @s armor.legs with leather_leggings{upgrade:2}
execute unless data entity @s[scores={armor=1}] Inventory[{id:"minecraft:leather_boots"}] run item replace entity @s armor.feet with leather_boots{upgrade:2}
execute unless data entity @s[scores={armor=2}] Inventory[{id:"minecraft:chainmail_helmet"}] run item replace entity @s[tag=!Rking,tag=!Bking] armor.head with chainmail_helmet{upgrade:2}
execute unless data entity @s[scores={armor=2}] Inventory[{id:"minecraft:chainmail_chestplate"}] run item replace entity @s armor.chest with chainmail_chestplate{upgrade:2}
execute unless data entity @s[scores={armor=2}] Inventory[{id:"minecraft:chainmail_leggings"}] run item replace entity @s armor.legs with chainmail_leggings{upgrade:2}
execute unless data entity @s[scores={armor=2}] Inventory[{id:"minecraft:chainmail_boots"}] run item replace entity @s armor.feet with chainmail_boots{upgrade:2}
execute unless data entity @s[scores={armor=3}] Inventory[{id:"minecraft:iron_helmet"}] run item replace entity @s[tag=!Rking,tag=!Bking] armor.head with iron_helmet{upgrade:2}
execute unless data entity @s[scores={armor=3}] Inventory[{id:"minecraft:iron_chestplate"}] run item replace entity @s armor.chest with iron_chestplate{upgrade:2}
execute unless data entity @s[scores={armor=3}] Inventory[{id:"minecraft:iron_leggings"}] run item replace entity @s armor.legs with iron_leggings{upgrade:2}
execute unless data entity @s[scores={armor=3}] Inventory[{id:"minecraft:iron_boots"}] run item replace entity @s armor.feet with iron_boots{upgrade:2}