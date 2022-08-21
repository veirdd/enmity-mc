execute if score @s enmity.biome_type matches 7 run playsound enmity:ambience.wind ambient @s ~ ~ ~ 0.09 0.8 0
execute if score @s enmity.biome_type matches 14 run playsound enmity:ambience.wind ambient @s ~ ~ ~ 0.12 0.8 0
scoreboard players set @s enmity.amb_loop 1
execute store result score @s enmity.math_a run loot spawn ~ -1000 ~ loot enmity:random_3
scoreboard players operation @s enmity.amb_loop += @s enmity.math_a