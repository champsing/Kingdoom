#---被動---
effect give @s weakness 11 9 true
effect give @s slowness 11 0 true
effect give @s resistance 11 4
particle item shield ~ ~1 ~ 0 0.5 0 0 8 force @a
playsound item.armor.equip_diamond ambient @a
scoreboard players set @s Dkit_cd 4200