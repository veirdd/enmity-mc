playsound block.stone.break neutral @a[distance=0..] ~ ~ ~ 2 2 0
scoreboard players set @s enmity.math_a 180
execute store result score @s enmity.math_b run data get entity @s Rotation[0] 1
execute store result entity @s Rotation[0] float 1 run scoreboard players operation @s enmity.math_a -= @s enmity.math_b
tag @s add enmity.bounced
scoreboard players add @s enmity.impact_ct 1