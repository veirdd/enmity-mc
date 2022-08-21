playsound enmity:ambience.river ambient @s[y=60,dy=10] ~ ~ ~ 1 1 0
playsound enmity:ambience.swamp ambient @s ~ ~ ~ 1.5 1 0
execute if predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run playsound enmity:ambience.night_crickets ambient @s ~ ~ ~ 0.15 1 0
scoreboard players set @s enmity.amb_loop 2
execute store result score @s enmity.math_a run loot spawn ~ -1000 ~ loot enmity:random_3
scoreboard players operation @s enmity.amb_loop += @s enmity.math_a