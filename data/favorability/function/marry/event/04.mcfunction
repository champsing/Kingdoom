scoreboard players set @a[tag=new_marry,scores={money=..150}] money 0
scoreboard players remove @a[tag=new_marry,scores={money=150..}] money 150
tellraw @a ["§6§l>> ","恭喜",{"selector":"@a[tag=new_marry]","separator":{"text":"和"}},"§6結婚",", 兩人舉辦","§6奢華婚宴","花費","§6150元"]