#---幸運---
tag @s add Skit06
effect give @s luck 20 0
particle block{block_state:"diamond_block"} ~ ~2 ~ 0.5 0 0.5 0.3 5 force @a
playsound entity.experience_orb.pickup ambient @a
scoreboard players set @s Skit_cd 3600