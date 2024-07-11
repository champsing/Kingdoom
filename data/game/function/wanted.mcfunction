tag @s add wanted
scoreboard players reset @s wanted
tellraw @a ["",{"text":">> ","bold":true,"color":"gold"},{"selector":"@s"},{"text":"已成為"},{"text":"通緝犯","color":"gold"},{"text":", 擊殺通緝犯可獲得"},{"text":"獎勵","color":"gold"}]