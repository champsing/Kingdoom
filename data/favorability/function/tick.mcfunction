kill @e[type=item,nbt={Item:{id:"minecraft:written_book",components:{"minecraft:custom_data":{book:"favorability"}}}}]
execute as @a[team=!spec] store success score @s fav_book run clear @s written_book[custom_data~{book:"favorability"}] 0
give @a[team=!spec,scores={fav_book=0}] written_book[written_book_content={pages:[["",{"text":"好感系統","bold":true,"color":"gold"},"\\u00a7r",{"text":"\\n【"},{"text":"查看好感","clickEvent":{"action":"run_command","value":"/trigger fav_op set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"查看所有玩家的好感度"}]}},{"text":"】\\n【"},{"text":"約會","clickEvent":{"action":"run_command","value":"/trigger fav_op set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"向一位玩家發出約會邀請\\n條件: 與對方好感大於60%"}]}},{"text":"】\\n【"},{"text":"求婚","clickEvent":{"action":"run_command","value":"/trigger fav_op set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"向一位玩家求婚\\n條件: 與對方好感大於80%"}]}},{"text":"】\\n【"},{"text":"送禮","clickEvent":{"action":"run_command","value":"/trigger fav_op set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"向一位玩家送出副手拿著的物品\\n條件: 無"}]}},{"text":"】\\n【"},{"text":"出軌","clickEvent":{"action":"run_command","value":"/trigger fav_op set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"向一位玩家出軌\\n條件: 已結婚, 與對方好感大於70%"}]}},{"text":"】\\n【"},{"text":"抓姦","clickEvent":{"action":"run_command","value":"/trigger fav_op set 6"},"hoverEvent":{"action":"show_text","contents":[{"text":"向你的伴侶提出有小三的質疑\\n條件: 你的伴侶"}]}},{"text":"】\\n【"},{"text":"吵架","clickEvent":{"action":"run_command","value":"/trigger fav_op set 7"},"hoverEvent":{"action":"show_text","contents":[{"text":"向一位玩家減少10好感度\\n條件: 花費10元"}]}},{"text":"】\\n【"},{"text":"決鬥","clickEvent":{"action":"run_command","value":"/trigger fav_op set 8"},"hoverEvent":{"action":"show_text","contents":[{"text":"向一位玩家提出決鬥\\n條件: 敵隊, 與對方好感小於30%"}]}},{"text":"】\\n【"},{"text":"結仇","clickEvent":{"action":"run_command","value":"/trigger fav_op set 9"},"hoverEvent":{"action":"show_text","contents":[{"text":"向一位玩家成為宿敵\\n條件: 與對方好感小於10%"}]}},{"text":"】"}]],author:"丘比特",title:"好感系統操作書"},custom_data={book:"favorability"}]

scoreboard players enable @a[team=!spec] fav_op
execute as @a[scores={fav_op=1..}] at @s run function favorability:operation

#約會
execute as @a[predicate=favorability:scores/ask_for_date] at @s run function favorability:dating/click
#約會回應計時
execute as @a[predicate=favorability:scores/date_feedback] run function favorability:dating/feedback/countdown
#答應或拒絕
execute as @a[scores={date_feedback=1}] at @s run function favorability:dating/feedback/accept
execute as @a[scores={date_feedback=2}] at @s run function favorability:dating/feedback/deny
#開始約會
execute as @a[scores={date_time=0..}] run function favorability:dating/start_dating/one_minute

#求婚
execute as @a[predicate=favorability:scores/ask_for_marry] at @s run function favorability:marry/click
#求婚回應計時
execute as @a[predicate=favorability:scores/marry_feedback] run function favorability:marry/feedback/countdown
#答應或拒絕
execute as @a[scores={marry_feedback=1}] at @s run function favorability:marry/feedback/accept/root
execute as @a[scores={marry_feedback=2}] at @s run function favorability:marry/feedback/deny/root
#結婚
execute as @a[scores={marry_pair=1..}] at @s run function favorability:marry/married
execute as @a[scores={marry_pair=1..,marry_ring=0}] run function favorability:marry/divorce
#結婚CD
scoreboard players remove @a[scores={marry_cd=1..}] marry_cd 1

#送禮
execute as @a[predicate=favorability:scores/ask_for_gift] at @s run function favorability:gift/click
#送禮回應計時
execute as @a[predicate=favorability:scores/gift_feedback] run function favorability:gift/feedback/countdown
#滿意
execute as @a[scores={gift_feedback=1..3}] at @s run function favorability:gift/feedback/root

#出軌
execute as @a[predicate=favorability:scores/ask_for_rail] at @s run function favorability:rail/click
#小三回應計時
execute as @a[predicate=favorability:scores/rail_feedback] run function favorability:rail/feedback/countdown
#答應或拒絕
execute as @a[scores={rail_feedback=1}] at @s run function favorability:rail/feedback/accept/root
execute as @a[scores={rail_feedback=2}] at @s run function favorability:rail/feedback/deny/root
#效果
execute as @a[scores={rail_count=0..}] unless score @s rail_count = @s rail_count_record run function favorability:rail/effect/root

#吵架
execute as @a[predicate=favorability:scores/ask_for_argue] at @s run function favorability:argue/click

#決鬥
execute as @a[predicate=favorability:scores/ask_for_duel] at @s run function favorability:duel/click
#決鬥回應計時
execute as @a[predicate=favorability:scores/duel_feedback] run function favorability:duel/feedback/countdown
#答應或拒絕
execute as @a[scores={duel_feedback=1}] at @s run function favorability:duel/feedback/accept
execute as @a[scores={duel_feedback=2}] at @s run function favorability:duel/feedback/deny

#結仇
execute as @a[predicate=favorability:scores/ask_for_enemy] at @s run function favorability:enemy/click
#結仇回應計時
execute as @a[predicate=favorability:scores/enemy_feedback] run function favorability:enemy/feedback/countdown
#答應或拒絕
execute as @a[scores={enemy_feedback=1}] at @s run function favorability:enemy/feedback/accept
execute as @a[scores={enemy_feedback=2}] at @s run function favorability:enemy/feedback/deny