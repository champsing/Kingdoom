#---傳炸彈---
execute at @a[tag=event03] run particle large_smoke ~ ~1.5 ~ 0 0 0 0.01 0 force @a[tag=!event03]
effect give @a[tag=event03] speed 1 0 true