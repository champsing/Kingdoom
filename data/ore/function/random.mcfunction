#---隨機生成礦物---
execute if entity @s[tag=!Skit06] if predicate ore:random anchored eyes rotated ~ 0 run return run function ore:mine
execute if entity @s[tag=Skit06] if predicate ore:kit anchored eyes rotated ~ 0 run function ore:mine