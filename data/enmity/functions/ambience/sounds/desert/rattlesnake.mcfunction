execute store result score @s enmity.math_a run loot spawn ~ ~ ~ loot enmity:random_4
execute if score @s enmity.math_a matches 1 run playsound enmity:ambience.rattlesnake ambient @s ~15 ~-3 ~15 2 1 0
execute if score @s enmity.math_a matches 2 run playsound enmity:ambience.rattlesnake ambient @s ~-15 ~-3 ~15 2 1 0
execute if score @s enmity.math_a matches 3 run playsound enmity:ambience.rattlesnake ambient @s ~15 ~-3 ~-15 2 1 0
execute if score @s enmity.math_a matches 4 run playsound enmity:ambience.rattlesnake ambient @s ~-15 ~-3 ~-15 2 1 0