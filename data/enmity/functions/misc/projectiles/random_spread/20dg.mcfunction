execute store result score @s enmity.rotation run data get entity @s Rotation[0]
execute store result score @s enmity.math_a run loot spawn ~ -1000 ~ loot enmity:random_41
scoreboard players operation @s enmity.math_a -= %const_21 enmity.value
scoreboard players operation @s enmity.rotation += @s enmity.math_a
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s enmity.rotation
execute store result score @s enmity.rotation run data get entity @s Rotation[1]
execute store result score @s enmity.math_a run loot spawn ~ -1000 ~ loot enmity:random_41
scoreboard players operation @s enmity.math_a -= %const_21 enmity.value
scoreboard players operation @s enmity.rotation += @s enmity.math_a
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s enmity.rotation