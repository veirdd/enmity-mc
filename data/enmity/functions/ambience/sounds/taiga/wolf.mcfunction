execute store result score @s enmity.math_a run loot spawn ~ ~ ~ loot enmity:random_4
execute if score @s enmity.math_a matches 1 run playsound enmity:ambience.wolf ambient @s ~15 ~-5 ~15 1.5 0.7 0
execute if score @s enmity.math_a matches 2 run playsound enmity:ambience.wolf ambient @s ~-15 ~-5 ~15 1.5 0.8 0
execute if score @s enmity.math_a matches 3 run playsound enmity:ambience.wolf ambient @s ~15 ~-5 ~-15 1.5 0.9 0
execute if score @s enmity.math_a matches 4 run playsound enmity:ambience.wolf ambient @s ~-15 ~-5 ~-15 1.5 1 0