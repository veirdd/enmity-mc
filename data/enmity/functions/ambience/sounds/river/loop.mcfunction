playsound enmity:ambience.river ambient @s ~ ~ ~ 1.5 1 0
scoreboard players set @s enmity.amb_loop 1
execute store result score @s enmity.math_a run loot spawn ~ -1000 ~ loot enmity:random_3
scoreboard players operation @s enmity.amb_loop += @s enmity.math_a