#---投票---
schedule function spy:red/total 60s
scoreboard objectives setdisplay sidebar.team.red Rvote
scoreboard players enable @a[team=red] Rclick
title @a[team=red] title {"text":"投票時間","color":"red"}
tellraw @a[team=red] ["",{"text":"——————————————————","color":"gold"}]
execute as @a[scores={Rnumber=1}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 1"}}]
execute as @a[scores={Rnumber=2}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 2"}}]
execute as @a[scores={Rnumber=3}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 3"}}]
execute as @a[scores={Rnumber=4}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 4"}}]
execute as @a[scores={Rnumber=5}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 5"}}]
execute as @a[scores={Rnumber=6}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 6"}}]
execute as @a[scores={Rnumber=7}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 7"}}]
execute as @a[scores={Rnumber=8}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 8"}}]
execute as @a[scores={Rnumber=9}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 9"}}]
execute as @a[scores={Rnumber=10}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 10"}}]
execute as @a[scores={Rnumber=11}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 11"}}]
execute as @a[scores={Rnumber=12}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 12"}}]
execute as @a[scores={Rnumber=13}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 13"}}]
execute as @a[scores={Rnumber=14}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 14"}}]
execute as @a[scores={Rnumber=15}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 15"}}]
execute as @a[scores={Rnumber=16}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 16"}}]
execute as @a[scores={Rnumber=17}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 17"}}]
execute as @a[scores={Rnumber=18}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 18"}}]
execute as @a[scores={Rnumber=19}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 19"}}]
execute as @a[scores={Rnumber=20}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 20"}}]
execute as @a[scores={Rnumber=21}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 21"}}]
execute as @a[scores={Rnumber=22}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 22"}}]
execute as @a[scores={Rnumber=23}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 23"}}]
execute as @a[scores={Rnumber=24}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 24"}}]
execute as @a[scores={Rnumber=25}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 25"}}]
execute as @a[scores={Rnumber=26}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 26"}}]
execute as @a[scores={Rnumber=27}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 27"}}]
execute as @a[scores={Rnumber=28}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 28"}}]
execute as @a[scores={Rnumber=29}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 29"}}]
execute as @a[scores={Rnumber=30}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 30"}}]
execute as @a[scores={Rnumber=31}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 31"}}]
execute as @a[scores={Rnumber=32}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 32"}}]
execute as @a[scores={Rnumber=33}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 33"}}]
execute as @a[scores={Rnumber=34}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 34"}}]
execute as @a[scores={Rnumber=35}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 35"}}]
execute as @a[scores={Rnumber=36}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 36"}}]
execute as @a[scores={Rnumber=37}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 37"}}]
execute as @a[scores={Rnumber=38}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 38"}}]
execute as @a[scores={Rnumber=39}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 39"}}]
execute as @a[scores={Rnumber=40}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 40"}}]
execute as @a[scores={Rnumber=41}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 41"}}]
execute as @a[scores={Rnumber=42}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 42"}}]
execute as @a[scores={Rnumber=43}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 43"}}]
execute as @a[scores={Rnumber=44}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 44"}}]
execute as @a[scores={Rnumber=45}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 45"}}]
execute as @a[scores={Rnumber=46}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 46"}}]
execute as @a[scores={Rnumber=47}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 47"}}]
execute as @a[scores={Rnumber=48}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 48"}}]
execute as @a[scores={Rnumber=49}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 49"}}]
execute as @a[scores={Rnumber=50}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 50"}}]
execute as @a[scores={Rnumber=51}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 51"}}]
execute as @a[scores={Rnumber=52}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 52"}}]
execute as @a[scores={Rnumber=53}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 53"}}]
execute as @a[scores={Rnumber=54}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 54"}}]
execute as @a[scores={Rnumber=55}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 55"}}]
execute as @a[scores={Rnumber=56}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 56"}}]
execute as @a[scores={Rnumber=57}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 57"}}]
execute as @a[scores={Rnumber=58}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 58"}}]
execute as @a[scores={Rnumber=59}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 59"}}]
execute as @a[scores={Rnumber=60}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 60"}}]
execute as @a[scores={Rnumber=61}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 61"}}]
execute as @a[scores={Rnumber=62}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 62"}}]
execute as @a[scores={Rnumber=63}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 63"}}]
execute as @a[scores={Rnumber=64}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 64"}}]
execute as @a[scores={Rnumber=65}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 65"}}]
execute as @a[scores={Rnumber=66}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 66"}}]
execute as @a[scores={Rnumber=67}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 67"}}]
execute as @a[scores={Rnumber=68}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 68"}}]
execute as @a[scores={Rnumber=69}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 69"}}]
execute as @a[scores={Rnumber=70}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 70"}}]
execute as @a[scores={Rnumber=71}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 71"}}]
execute as @a[scores={Rnumber=72}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 72"}}]
execute as @a[scores={Rnumber=73}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 73"}}]
execute as @a[scores={Rnumber=74}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 74"}}]
execute as @a[scores={Rnumber=75}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 75"}}]
execute as @a[scores={Rnumber=76}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 76"}}]
execute as @a[scores={Rnumber=77}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 77"}}]
execute as @a[scores={Rnumber=78}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 78"}}]
execute as @a[scores={Rnumber=79}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 79"}}]
execute as @a[scores={Rnumber=80}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 80"}}]
execute as @a[scores={Rnumber=81}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 81"}}]
execute as @a[scores={Rnumber=82}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 82"}}]
execute as @a[scores={Rnumber=83}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 83"}}]
execute as @a[scores={Rnumber=84}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 84"}}]
execute as @a[scores={Rnumber=85}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 85"}}]
execute as @a[scores={Rnumber=86}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 86"}}]
execute as @a[scores={Rnumber=87}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 87"}}]
execute as @a[scores={Rnumber=88}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 88"}}]
execute as @a[scores={Rnumber=89}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 89"}}]
execute as @a[scores={Rnumber=90}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 90"}}]
execute as @a[scores={Rnumber=91}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 91"}}]
execute as @a[scores={Rnumber=92}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 92"}}]
execute as @a[scores={Rnumber=93}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 93"}}]
execute as @a[scores={Rnumber=94}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 94"}}]
execute as @a[scores={Rnumber=95}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 95"}}]
execute as @a[scores={Rnumber=96}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 96"}}]
execute as @a[scores={Rnumber=97}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 97"}}]
execute as @a[scores={Rnumber=98}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 98"}}]
execute as @a[scores={Rnumber=99}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 99"}}]
execute as @a[scores={Rnumber=100}] run tellraw @a[team=red] ["",{"selector":"@s"},{"text":" "},{"text":"【點擊投票】","hoverEvent":{"action":"show_text","contents":[{"text":"點擊投票"}]},"clickEvent":{"action":"run_command","value":"/trigger Rclick set 100"}}]
tellraw @a[team=red] ["",{"text":"——————————————————","color":"gold"}]
tellraw @a[team=red,tag=Rking] {"text":"【結算投票】","clickEvent":{"action":"run_command","value":"/trigger vote set 1"}}
tellraw @a[team=red,tag=Rking] ["",{"text":"——————————————————","color":"gold"}]