execute store result score @s enmity.math_a if entity @e[type=magma_cube,tag=enmity.flame_spewer,distance=..64]
execute if score @s enmity.math_a matches 0..1 run function enmity:entities/mobs/flame_spewer/spawning/spawn
execute if score @s enmity.math_a matches 2..6 if predicate enmity:random/random_0.25 run function enmity:entities/mobs/flame_spewer/spawning/spawn