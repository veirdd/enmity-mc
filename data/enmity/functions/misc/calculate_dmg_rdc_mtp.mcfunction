scoreboard players set @s enmity.dmg_rdc_mtp 100
scoreboard players operation @s enmity.math_a = @s enmity.dmg_rdc
scoreboard players operation @s enmity.math_a *= %const_2 enmity.value
execute store result score @s enmity.dmg_rdc_mtp run scoreboard players operation @s enmity.dmg_rdc_mtp -= @s enmity.math_a