execute store result score @s enmity.math_a run time query day
scoreboard players operation @s enmity.math_a %= %const_8 enmity.value
execute if score @s enmity.math_a matches 0 run function enmity:entities/other_entities/items/pocket_moon/spawn