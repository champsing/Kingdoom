tag @s add fav_add_self

execute if entity @a[tag=fav_add,tag=!fav_add_self,scores={fav_Rnum=1..100},limit=1] run function favorability:add/red
execute if entity @a[tag=fav_add,tag=!fav_add_self,scores={fav_Bnum=1..100},limit=1] run function favorability:add/blue

tag @s remove fav_add_self