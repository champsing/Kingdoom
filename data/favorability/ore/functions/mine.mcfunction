#---生成礦物距離---
scoreboard players add @s mine 1
execute if block ~ ~ ~ #ore:stone run scoreboard players set @s mine 40
execute as @s[scores={mine=..39}] positioned ^ ^ ^1 run function ore:mine
execute as @s[scores={mine=40..}] run function ore:setblock