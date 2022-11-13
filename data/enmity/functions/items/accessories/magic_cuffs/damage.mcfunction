scoreboard players operation @s enmity.math_d = @s enmity.taken_dmg
scoreboard players operation @s enmity.math_d *= %const_20 enmity.value
scoreboard players operation @s enmity.math_e = @s enmity.max_mana
scoreboard players operation @s enmity.math_e -= @s enmity.mana
execute if score @s enmity.math_d > @s enmity.math_e run scoreboard players operation @s enmity.math_d = @s enmity.math_e
scoreboard players operation @s enmity.mana += @s enmity.math_d
execute if score @s enmity.math_d > %const_0 enmity.value run particle dust 0.3 0.3 1 0.5 ~ ~1 ~ 0.3 0.5 0.3 0 15 force
execute if score @s enmity.math_d > %const_0 enmity.value run playsound block.enchantment_table.use player @a[distance=0..] ~ ~ ~ 1 2 0