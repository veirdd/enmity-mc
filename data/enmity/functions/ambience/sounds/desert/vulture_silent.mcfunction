execute store result score @s enmity.math_a run loot spawn ~ ~ ~ loot enmity:random_4
execute if score @s enmity.math_a matches 1 run playsound enmity:ambience.vulture ambient @s ~10 ~15 ~10 1.4 1 0
execute if score @s enmity.math_a matches 2 run playsound enmity:ambience.vulture ambient @s ~-10 ~15 ~10 1.4 1 0
execute if score @s enmity.math_a matches 3 run playsound enmity:ambience.vulture ambient @s ~10 ~15 ~-10 1.4 1 0
execute if score @s enmity.math_a matches 4 run playsound enmity:ambience.vulture ambient @s ~-10 ~15 ~-10 1.4 1 0