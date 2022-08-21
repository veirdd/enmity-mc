execute store result score @s enmity.math_a run loot spawn ~ ~ ~ loot enmity:random_4
execute if score @s enmity.math_a matches 1 run playsound enmity:ambience.mosquito ambient @s ~10 ~3 ~10 1 1 0
execute if score @s enmity.math_a matches 2 run playsound enmity:ambience.mosquito ambient @s ~-10 ~3 ~10 1 1 0
execute if score @s enmity.math_a matches 3 run playsound enmity:ambience.mosquito ambient @s ~10 ~3 ~-10 1 1 0
execute if score @s enmity.math_a matches 4 run playsound enmity:ambience.mosquito ambient @s ~-10 ~3 ~-10 1 1 0