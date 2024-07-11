playsound ui.button.click ambient @s ~ ~ ~
execute if score @s marry_pair matches 1.. run function favorability:rail/marry
execute unless score @s marry_pair matches 1.. run tellraw @s ["§6§l>> ","出軌","§6失敗",", 你還沒","§6結婚"]