execute unless entity @e[tag=build_name] run tellraw @s ["",{"text":">> ","bold":true,"color":"gold"},{"text":"設定"},{"text":"失敗","color":"gold"},{"text":", 目前不存在設定中的建築物點"}]
execute as @e[tag=build_name] run function edit:build/name
clear @s written_book[custom_data~{name:1}]
item replace entity @s weapon.mainhand with writable_book[custom_name='{"text":"命名建築物","color":"gold","italic":false}',writable_book_content={pages:["點擊下方「署名」，輸入建築物名字，點擊「署名並完成」"]},custom_data={name:1}]