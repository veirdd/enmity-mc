execute store result score @s enmity.idle_cd run loot spawn ~ -1000 ~ loot enmity:random_200
scoreboard players set @s enmity.math_c 100
scoreboard players operation @s enmity.idle_cd += @s enmity.math_c
playsound entity.illusioner.ambient hostile @a[distance=0..] ~ ~ ~ 2 0 0
playsound entity.illusioner.ambient hostile @a[distance=0..] ~ ~ ~ 2 0.4 0