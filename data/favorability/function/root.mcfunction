#開始遊戲時執行
scoreboard objectives add fav_op trigger
scoreboard objectives add fav_Rnum dummy
scoreboard objectives add fav_Bnum dummy
scoreboard objectives add fav_kill dummy
scoreboard objectives add fav_death dummy
scoreboard objectives add fav_book dummy

scoreboard objectives add date_pair dummy
scoreboard objectives add date_ask_red trigger
scoreboard objectives add date_ask_blue trigger
scoreboard objectives add date_feedback trigger
scoreboard objectives add date_feedback_over dummy
scoreboard objectives add date_feedback_red dummy
scoreboard objectives add date_feedback_blue dummy
scoreboard objectives add date_time dummy
scoreboard objectives add date_cooldown dummy

scoreboard objectives add marry_pair dummy
scoreboard objectives add marry_ask_red trigger
scoreboard objectives add marry_ask_blue trigger
scoreboard objectives add marry_feedback trigger
scoreboard objectives add marry_feedback_over dummy
scoreboard objectives add marry_feedback_red dummy
scoreboard objectives add marry_feedback_blue dummy
scoreboard objectives add marry_ring dummy
scoreboard objectives add marry_event dummy
scoreboard objectives add marry_cd dummy

scoreboard players set 最大值 marry_event 5

scoreboard objectives add gift_red trigger
scoreboard objectives add gift_blue trigger
scoreboard objectives add gift_feedback trigger
scoreboard objectives add gift_feedback_over dummy
scoreboard objectives add gift_feedback_red dummy
scoreboard objectives add gift_feedback_blue dummy

scoreboard objectives add rail_pair dummy
scoreboard objectives add rail_ask_red trigger
scoreboard objectives add rail_ask_blue trigger
scoreboard objectives add rail_feedback trigger
scoreboard objectives add rail_feedback_over dummy
scoreboard objectives add rail_feedback_red dummy
scoreboard objectives add rail_feedback_blue dummy
scoreboard objectives add rail_red dummy
scoreboard objectives add rail_blue dummy
scoreboard objectives add rail_count dummy
scoreboard objectives add rail_count_record dummy

scoreboard objectives add argue_red trigger
scoreboard objectives add argue_blue trigger

scoreboard objectives add duel_pair dummy
scoreboard objectives add duel_ask_red trigger
scoreboard objectives add duel_ask_blue trigger
scoreboard objectives add duel_feedback trigger
scoreboard objectives add duel_feedback_over dummy
scoreboard objectives add duel_feedback_red dummy
scoreboard objectives add duel_feedback_blue dummy

scoreboard objectives add enemy_pair dummy
scoreboard objectives add enemy_ask_red trigger
scoreboard objectives add enemy_ask_blue trigger
scoreboard objectives add enemy_feedback trigger
scoreboard objectives add enemy_feedback_over dummy
scoreboard objectives add enemy_feedback_red dummy
scoreboard objectives add enemy_feedback_blue dummy

#每個人會先隨機拿到號碼
execute as @a[team=red] store result score @s fav_Rnum run scoreboard players add 玩家編號 fav_Rnum 1
execute as @a[team=blue] store result score @s fav_Bnum run scoreboard players add 玩家編號 fav_Bnum 1

function favorability:scoreboard/objectives
function favorability:scoreboard/reset