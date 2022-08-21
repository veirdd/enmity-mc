playsound block.stone.break neutral @a[distance=0..] ~ ~ ~ 1 1.2 0
setblock ~ ~ ~ rail
execute store result score @s enmity.math_a run data get entity @s Air
scoreboard players operation @s enmity.math_a -= %const_1 enmity.value
execute store result entity @s Air short 1 run scoreboard players get @s enmity.math_a