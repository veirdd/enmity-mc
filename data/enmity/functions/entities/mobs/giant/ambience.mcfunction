execute store result score @s enmity.idle_cd run loot spawn ~ -1000 ~ loot enmity:random_200
scoreboard players set @s enmity.math_c 100
scoreboard players operation @s enmity.idle_cd += @s enmity.math_c
execute positioned ^ ^ ^3 run playsound entity.zombie.ambient hostile @a[distance=0..] ~ ~8 ~ 2 0 0
execute positioned ^ ^ ^3 run playsound entity.zoglin.ambient hostile @a[distance=0..] ~ ~8 ~ 2 0.7 0
execute positioned ^ ^ ^3 run playsound entity.zoglin.ambient hostile @a[distance=0..] ~ ~8 ~ 2 0.7 0