playsound block.stone.break neutral @a[distance=0..] ~ ~ ~ 2 2 0
execute store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
scoreboard players add @s enmity.impact_ct 1
execute if predicate enmity:random/random_0.25 run function enmity:items/usable/crystal_storm/die_projectile