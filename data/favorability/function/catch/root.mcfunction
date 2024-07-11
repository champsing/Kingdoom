playsound ui.button.click ambient @s ~ ~ ~
execute if score @s marry_pair matches 1.. run function favorability:catch/check
execute unless score @s marry_pair matches 1.. run tellraw @s ["§6§l>> ","你還沒","§6結婚"]