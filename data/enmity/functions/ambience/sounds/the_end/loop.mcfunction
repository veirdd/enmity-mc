playsound enmity:ambience.underground ambient @s ~ ~ ~ 0.6 0 0
execute store result score @s enmity.math_a run loot spawn ~ -1000 ~ loot enmity:random_3
execute if score @s enmity.math_a matches 1 if predicate enmity:random/random_0.1 run playsound enmity:ambience.underground ambient @s ~ ~ ~ 0.15 2 0
execute if score @s enmity.math_a matches 2 if predicate enmity:random/random_0.1 run playsound minecraft:ambient.underwater.loop.additions.ultra_rare ambient @s ~ ~ ~ 2 1.7 0
execute if score @s enmity.math_a matches 3 if predicate enmity:random/random_0.1 run playsound minecraft:ambient.underwater.loop.additions.ultra_rare ambient @s ~ ~ ~ 2 2 0
scoreboard players set @s enmity.amb_loop 1
execute store result score @s enmity.math_a run loot spawn ~ -1000 ~ loot enmity:random_3
scoreboard players operation @s enmity.amb_loop += @s enmity.math_a