execute unless predicate enmity:environment/is_night run playsound enmity:ambience.desert_wind ambient @s ~ ~ ~ 0.5 1 0
execute if predicate enmity:environment/is_night run playsound enmity:ambience.night_crickets ambient @s ~ ~ ~ 0.03 1 0
execute if predicate enmity:environment/is_night run playsound enmity:ambience.desert_wind ambient @s ~ ~ ~ 0.3 1 0
scoreboard players set @s enmity.amb_loop 1
execute store result score @s enmity.math_a run loot spawn ~ -1000 ~ loot enmity:random_3
scoreboard players operation @s enmity.amb_loop += @s enmity.math_a