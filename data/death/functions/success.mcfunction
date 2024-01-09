#---死亡---
title @s title {"text":"你死了","color":"red","bold":true}

#---事件---
execute store success score @s event_curse run clear @s heart_of_the_sea
execute if entity @s[scores={event_curse=1}] run summon item ~ ~ ~ {CustomName:'{"text":"噩運水晶"}',CustomNameVisible:1b,Item:{id:"minecraft:heart_of_the_sea",tag:{display:{Name:'{"text":"噩運水晶","italic":false}'}},Count:1b},Age:-32768,PickupDelay:50}
execute as @s[tag=event15] run function event:end/15

#---清除---
clear @s diamond
clear @s allay_spawn_egg
clear @s knowledge_book
clear @s golden_helmet
clear @s gold_nugget
clear @s written_book{KingBook:1}
clear @s written_book{book:"favorability"}

execute if entity @s[team=red] run function death:red
execute if entity @s[team=blue] run function death:blue

execute if score 墓碑噴裝 menu matches 0 if data entity @s Inventory[0] run function inventory:grave/drop
execute if score 隨機噴裝 menu matches 0 run function inventory:random/drop

execute if entity @s[tag=wanted] run function game:wanted_success

execute if score 護送模式 menu matches 0 run function death:escort
execute if score 捍衛模式 menu matches 0 run function death:defend
execute if score 尋寶模式 menu matches 0 run function death:treasure

execute if entity @s[tag=Rgem_player] run function gem:red/spawn
execute if entity @s[tag=Bgem_player] run function gem:blue/spawn

execute if entity @s[scores={downgrade=10..}] run function upgrade:downgrade
function upgrade:give
execute if entity @s[tag=Rking] run function death:king
execute if entity @s[tag=Bking] run function death:king
give @s[tag=vote] written_book{KingBook:1,book:"spy",pages:['["",{"text":"\\n\\n\\n\\n\\n      【"},{"text":"發起投票","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger click set 1"}},{"text":"】\\n\\n","color":"reset"}]'],title:"間諜投票發起書",author:"國王"}
execute if score @s Akit matches 1..8 run function kit:attack/give
execute if score @s Dkit matches 11..18 run function kit:defense/give
execute if score @s Skit matches 21..28 run function kit:support/give
execute if score @s Kkit matches 31..36 run function kit:king/give

scoreboard players add @s stamina 5
scoreboard players set @s[scores={stamina=0..10}] stamina 11

execute if entity @s[scores={enemy_pair=1..}] run function favorability:enemy/death