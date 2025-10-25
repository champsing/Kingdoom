gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobLoot true
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule keepInventory true
gamerule logAdminCommands false
gamerule reducedDebugInfo false
gamerule sendCommandFeedback false
gamerule spawnRadius 0
gamerule locatorBar true

team add red "紅隊"
team add blue "藍隊"
team add red_edit "紅隊編輯"
team add blue_edit "藍隊編輯"
team add spec "觀戰"
team add gold "金隊"
team modify red color red
team modify blue color blue
team modify red_edit color red
team modify blue_edit color blue
team modify spec color gray
team modify gold color gold
team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true
team modify red friendlyFire false
team modify blue friendlyFire false
team join red_edit 紅隊分數
team join blue_edit 藍隊分數
team join red_edit 紅隊靈魂
team join blue_edit 藍隊靈魂
team join red_edit 紅隊人數
team join blue_edit 藍隊人數
team join gold 遊戲時間
team join gold 建築分數
team join gold 目標分數
team join gold 第一天限制分數
team join gold 第二天限制分數
team join gold 玩家人數
team join gold 間諜模式
team join gold 好感系統
team join gold 噴裝模式
team join gold 遊戲模式

scoreboard players reset 護送模式 menu
scoreboard players reset 捍衛模式 menu
scoreboard players reset 尋寶模式 menu
scoreboard players reset 墓碑噴裝 menu
scoreboard players reset 隨機噴裝 menu

bossbar add event "事件倒數"
bossbar add red "紅隊國王血量"
bossbar add blue "藍隊國王血量"
bossbar set event color yellow
bossbar set red color red
bossbar set blue color blue
bossbar set red max 40
bossbar set blue max 40
bossbar set red style notched_20
bossbar set blue style notched_20

scoreboard objectives add menu dummy ["",{"text":"⚔ ","bold":true,"color":"red"},{"text":"亡國之戰 II","bold":true,"color":"gold"},{"text":" ⚔","bold":true,"color":"blue"}]
scoreboard objectives add setting dummy "設定"
scoreboard objectives add list dummy {"text":"第一天早上","bold":true,"color":"gold"}
scoreboard objectives add list2 dummy "隱藏資訊"
scoreboard objectives add money dummy "錢"
scoreboard objectives add health health {"text":"❤","color":"red"}
scoreboard objectives add death deathCount "死亡數"
scoreboard objectives add kill playerKillCount "殺人數"
scoreboard objectives add wanted playerKillCount "通缉犯"
scoreboard objectives add join trigger "中途加入"

scoreboard objectives add top_kill dummy
scoreboard objectives add top_death dummy
scoreboard objectives add top_bomb dummy
scoreboard objectives add top_money dummy

scoreboard objectives add total_death deathCount
scoreboard objectives add total_kill playerKillCount
scoreboard objectives add total_bomb dummy
scoreboard objectives add total_money dummy

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy
scoreboard objectives add UUID4 dummy

scoreboard objectives add gem dummy
scoreboard objectives add Rgem dummy
scoreboard objectives add Bgem dummy
scoreboard objectives add gem_treasure mined:diamond_block
scoreboard objectives add gem_place dummy

scoreboard objectives add Rinv_number dummy "隨機噴裝數字"

scoreboard objectives add mine dummy "挖礦"
scoreboard objectives add stone mined:stone "挖石頭"
scoreboard objectives add iron mined:iron_ore "挖鐵"
scoreboard objectives add gold mined:gold_ore "挖黃金"
scoreboard objectives add diamond mined:diamond_ore "挖鑽石"
scoreboard objectives add Dstone mined:deepslate "挖深板岩"
scoreboard objectives add Diron mined:deepslate_iron_ore "挖深板岩鐵"
scoreboard objectives add Dgold mined:deepslate_gold_ore "挖深板岩黃金"
scoreboard objectives add Ddiamond mined:deepslate_diamond_ore "挖深板岩鑽石"
scoreboard objectives add ancient_debris mined:ancient_debris "挖遠古遺骸"

scoreboard objectives add spy dummy
scoreboard objectives add Rnumber dummy
scoreboard objectives add Bnumber dummy
scoreboard objectives add Rclick trigger
scoreboard objectives add Bclick trigger
scoreboard objectives add click trigger
scoreboard objectives add vote trigger
scoreboard objectives add Rvote dummy "紅隊票數"
scoreboard objectives add Bvote dummy "藍隊票數"
scoreboard objectives add mission dummy

scoreboard objectives add sorcery trigger "巫術"
scoreboard objectives add lottery used:ender_pearl "轉蛋"

scoreboard objectives add kit trigger
scoreboard objectives add kit_book dummy
scoreboard objectives add Akit dummy "攻擊型技能"
scoreboard objectives add Dkit dummy "防禦型技能"
scoreboard objectives add Skit dummy "支援型技能"
scoreboard objectives add Kkit dummy "國王技能"
scoreboard objectives add Akit_score dummy "攻擊型技能計時"
scoreboard objectives add Dkit_score dummy "防禦型技能計時"
scoreboard objectives add Skit_score dummy "支援型技能計時"
scoreboard objectives add Kkit_score dummy "國王技能計時"
scoreboard objectives add Akit_cd dummy "攻擊型技能冷卻"
scoreboard objectives add Dkit_cd dummy "防禦型技能冷卻"
scoreboard objectives add Skit_cd dummy "支援型技能冷卻"
scoreboard objectives add Kkit_cd dummy "國王技能冷卻"
scoreboard objectives add Akit_fist dummy "飛拳"

scoreboard objectives add upgrade dummy "升級台"
scoreboard objectives add downgrade deathCount "掉級"
scoreboard objectives add item_upgrade dummy "使用升級台"
scoreboard objectives add armor_upgrade dummy "裝備升級台"
scoreboard objectives add pickaxe_upgrade dummy "鎬升級台"
scoreboard objectives add sword_upgrade dummy "劍升級台"
scoreboard objectives add axe_upgrade dummy "斧頭升級台"
scoreboard objectives add forge_upgrade dummy "鍛造台升級台"
scoreboard objectives add slave_upgrade dummy "奴隸升級台"
scoreboard objectives add chest_upgrade dummy "保險箱升級台"
scoreboard objectives add guardian_upgrade dummy "守衛升級台"
scoreboard objectives add armor dummy "裝備"
scoreboard objectives add pickaxe dummy "鎬"
scoreboard objectives add sword dummy "劍"
scoreboard objectives add axe dummy "斧頭"
scoreboard objectives add team_upgrade dummy "團隊升級"
scoreboard objectives add upgrade_lock dummy "保險箱鎖"
scoreboard objectives add bag dummy "裝備包"
scoreboard objectives add bag_weapon dummy "武器包"
scoreboard objectives add bag_tool dummy "工具包"
scoreboard objectives add bag_armor dummy "盔甲包"

scoreboard objectives add forge dummy "鍛造"
scoreboard objectives add forge_attack dummy "攻擊效果"
scoreboard objectives add forge_hurt dummy "傷害效果"

scoreboard objectives add stamina dummy
scoreboard objectives add stamina_attack dummy
scoreboard objectives add stamina_arrow dummy
scoreboard objectives add stamina_bow used:bow
scoreboard objectives add stamina_crossbow used:crossbow
scoreboard objectives add stamina_beef used:cooked_beef
scoreboard objectives add stamina_melon used:melon_slice
scoreboard objectives add stamina_apple used:golden_apple
scoreboard objectives add stamina1 used:egg
scoreboard objectives add stamina2 used:snowball

scoreboard objectives add event dummy
scoreboard objectives add event_x dummy
scoreboard objectives add event_y dummy
scoreboard objectives add event_z dummy
scoreboard objectives add event_x2 dummy
scoreboard objectives add event_y2 dummy
scoreboard objectives add event_z2 dummy
scoreboard objectives add event_record dummy
scoreboard objectives add event_curse dummy
scoreboard objectives add event_titan dummy
scoreboard objectives add event_crossbow dummy
scoreboard objectives add event_death deathCount
scoreboard objectives add event_kill playerKillCount
scoreboard objectives add event_sneak custom:sneak_time
scoreboard objectives add event_fall custom:fall_one_cm
scoreboard objectives add event_hurt custom:damage_taken
scoreboard objectives add event_gamble dropped:emerald

scoreboard objectives add build dummy
scoreboard objectives add build_score dummy
scoreboard objectives add build_operation dummy
scoreboard objectives add build_cd dummy
scoreboard objectives add sizex dummy
scoreboard objectives add sizey dummy
scoreboard objectives add sizez dummy
scoreboard objectives add sizex2 dummy
scoreboard objectives add sizey2 dummy
scoreboard objectives add sizez2 dummy
scoreboard objectives add curx dummy
scoreboard objectives add cury dummy
scoreboard objectives add curz dummy
scoreboard objectives add x_reverse dummy
scoreboard objectives add y_reverse dummy

scoreboard objectives add border_x dummy
scoreboard objectives add border_y dummy
scoreboard objectives add border_z dummy

scoreboard players set 一半 list2 2
scoreboard players set 一百 list2 100
scoreboard players set 負數 list2 -1
scoreboard players set 征稅 list2 5
scoreboard players set 靈魂平衡 list2 100
scoreboard players set 箭矢體力 list2 80
scoreboard players set 盜竊運算 list2 5

scoreboard players set 建築分數 menu 100

scoreboard players set 最大值 Rinv_number 100
scoreboard players set 最大值 event 21
scoreboard players set 最大值 spy 10
scoreboard players set 最大值 forge 20
scoreboard players set 最大值 lottery 20

scoreboard players set 小獎 lottery 10
scoreboard players set 中獎 lottery 15
scoreboard players set 大獎 lottery 9

scoreboard players set 更新 list2 10