scoreboard players add Ginv setting 1
execute if score Ginv setting matches 31 run scoreboard players set Ginv setting 30
data modify block ~ ~ ~1 front_text.messages[3] set value '["",{"text":"墓碑時間: ","bold":true},{"score":{"name":"Ginv","objective":"setting"},"bold":true},{"text":"分鐘","bold":true}]'