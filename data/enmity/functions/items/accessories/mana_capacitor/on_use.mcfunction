scoreboard players operation @s enmity.cooldown /= %const_2 enmity.value
scoreboard players operation @s enmity.math_a = @s enmity.cooldown
scoreboard players operation @s enmity.math_a %= %const_4 enmity.value
execute unless score @s enmity.math_a matches 0 run scoreboard players add @s enmity.cooldown 2