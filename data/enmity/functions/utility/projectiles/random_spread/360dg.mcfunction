execute store result entity @s Rotation[0] float 1 run loot spawn ~ -1000 ~ loot enmity:random_360
execute store result score @s enmity.math_a run loot spawn ~ -1000 ~ loot enmity:random_181
scoreboard players operation @s enmity.math_a -= %const_91 enmity.value
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s enmity.math_a