#---巨人---
tag @s add event15
tag @s[nbt={ActiveEffects:[{Id:27,Amplifier:3b}]}] add event15_cart
tag @s[nbt={ActiveEffects:[{Id:27,Amplifier:5b}]}] add event15_colossal
tag @s[nbt={ActiveEffects:[{Id:27,Amplifier:6b}]}] add event15_beast
tag @s[nbt={ActiveEffects:[{Id:27,Amplifier:7b}]}] add event15_warhammer

tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:0b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已繼承"},{"text":"始祖巨人","color":"gold"},{"text":"的力量"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:1b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已繼承"},{"text":"進擊的巨人","color":"gold"},{"text":"的力量"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:2b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已繼承"},{"text":"盔甲巨人","color":"gold"},{"text":"的力量"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:3b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已繼承"},{"text":"車力巨人","color":"gold"},{"text":"的力量"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:4b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已繼承"},{"text":"顎巨人","color":"gold"},{"text":"的力量"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:5b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已繼承"},{"text":"超大型巨人","color":"gold"},{"text":"的力量"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:6b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已繼承"},{"text":"野獸巨人","color":"gold"},{"text":"的力量"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:7b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已繼承"},{"text":"戰錘巨人","color":"gold"},{"text":"的力量"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:8b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"你已繼承"},{"text":"女巨人","color":"gold"},{"text":"的力量"}]

tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:0b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"始祖巨人","color":"gold"},{"text":": 獲得村莊英雄效果 (1:30)"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:1b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"進擊的巨人","color":"gold"},{"text":": 獲得力量 II效果 (1:30)"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:2b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"盔甲巨人","color":"gold"},{"text":": 獲得抗性 II和生命值提升 II效果 (1:30)"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:3b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"車力巨人","color":"gold"},{"text":": 獲得加速 I效果, 吸收半徑5格內的物品 (1:30)"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:4b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"顎巨人","color":"gold"},{"text":": 獲得加速 II和挖掘加速 II效果 (1:30)"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:5b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"超大型巨人","color":"gold"},{"text":": 獲得緩速 I效果, 凋零半徑5格內的玩家 (1:30)"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:6b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"野獸巨人","color":"gold"},{"text":": 獲得跳躍提升 I效果, 提高手榴彈的爆炸威力 (1:30)"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:7b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"戰錘巨人","color":"gold"},{"text":": 獲得抗性 I效果, 硬化周圍的鵝卵石 (1:30)"}]
tellraw @s[nbt={ActiveEffects:[{Id:27,Amplifier:8b}]}] ["",{"text":">> ","bold":true,"color":"gold"},{"text":"女巨人","color":"gold"},{"text":": 獲得加速 I, 抗性 I和挖掘加速 I效果 (1:30)"}]

tag @s[tag=!event15_warhammer,tag=!event15_beast,tag=!event15_colossal,tag=!event15_cart] remove event15

effect clear @s unluck