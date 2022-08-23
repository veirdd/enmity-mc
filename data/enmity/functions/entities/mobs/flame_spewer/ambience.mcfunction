execute store result score @s enmity.idle_cd run loot spawn ~ -1000 ~ loot enmity:random_200
scoreboard players set @s enmity.math_c 100
scoreboard players operation @s enmity.idle_cd += @s enmity.math_c
playsound block.honey_block.slide hostile @a[distance=0..] ~ ~ ~ 2 0.5 0
playsound block.honey_block.slide hostile @a[distance=0..] ~ ~ ~ 2 0.5 0
playsound block.honey_block.slide hostile @a[distance=0..] ~ ~ ~ 2 0.5 0
playsound block.honey_block.slide hostile @a[distance=0..] ~ ~ ~ 2 0.5 0
playsound block.honey_block.slide hostile @a[distance=0..] ~ ~ ~ 2 0.5 0