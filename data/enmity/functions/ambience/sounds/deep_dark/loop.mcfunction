playsound enmity:ambience.underground ambient @s ~ ~ ~ 0.6 0 0
scoreboard players set @s enmity.amb_loop 2
execute store result score @s enmity.math_a run loot spawn ~ -1000 ~ loot enmity:random_3
scoreboard players operation @s enmity.amb_loop += @s enmity.math_a