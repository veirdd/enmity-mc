execute store result score @s enmity.math_a run loot spawn ~ ~ ~ loot enmity:random_4
execute if score @s enmity.math_a matches 1 run playsound entity.lightning_bolt.thunder ambient @s ~75 ~ ~75 1 0 1
execute if score @s enmity.math_a matches 2 run playsound entity.lightning_bolt.thunder ambient @s ~75 ~ ~75 1 0 1
execute if score @s enmity.math_a matches 3 run playsound entity.lightning_bolt.thunder ambient @s ~75 ~ ~-75 1 0 1
execute if score @s enmity.math_a matches 4 run playsound entity.lightning_bolt.thunder ambient @s ~75 ~ ~75 1 0 1