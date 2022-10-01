execute unless predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run playsound enmity:ambience.insects ambient @s ~ ~ ~ 0.2 1 0
execute unless predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run playsound enmity:ambience.birds ambient @s ~ ~ ~ 0.3 1 0
execute if predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run playsound enmity:ambience.night_crickets ambient @s ~ ~ ~ 0.2 1 0
scoreboard players set @s enmity.amb_loop 2
execute store result score @s enmity.math_a run loot spawn ~ -1000 ~ loot enmity:random_3
scoreboard players operation @s enmity.amb_loop += @s enmity.math_a