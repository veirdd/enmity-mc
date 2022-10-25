execute if score @s enmity.cooldown matches 5 run tp @s ~ ~ ~ ~12 ~
execute if score @s enmity.cooldown matches 4 run tp @s ~ ~ ~ ~10 ~
execute if score @s enmity.cooldown matches 3 run tp @s ~ ~ ~ ~8 ~
execute if score @s enmity.cooldown matches 2 run tp @s ~ ~ ~ ~6 ~
execute if score @s enmity.cooldown matches 1 run tp @s ~ ~ ~ ~4 ~
execute if score @s enmity.cooldown matches 0 run tp @s ~ ~ ~ ~2 ~
particle sculk_charge_pop ~ ~0.8 ~ 0.1 0.1 0.1 0.1 1 force
particle dust_color_transition 0 1 1 0.6 0 0 0 ~ ~0.8 ~ 0.2 0.2 0.2 0 3 force