execute unless predicate enmity:environment/is_night run playsound enmity:ambience.insects ambient @s ~ ~ ~ 0.4 1 0
execute unless predicate enmity:environment/is_night run playsound enmity:ambience.birds ambient @s ~ ~ ~ 0.4 1 0
execute unless predicate enmity:environment/is_night run playsound enmity:ambience.jungle ambient @s ~ ~ ~ 0.1 1 0
execute unless predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run playsound enmity:ambience.jungle ambient @s ~ ~ ~ 0.25 1 0
execute unless predicate enmity:environment/is_night unless predicate enmity:environment/is_raining run playsound enmity:ambience.birds ambient @s ~ ~ ~ 0.2 1 0
execute if predicate enmity:environment/is_night run playsound enmity:ambience.insects ambient @s ~ ~ ~ 0.6 1 0
execute if predicate enmity:environment/is_night run playsound enmity:ambience.night_crickets ambient @s ~ ~ ~ 0.4 1 0
execute store result score @s enmity.amb_loop run loot spawn ~ -1000 ~ loot enmity:random_3