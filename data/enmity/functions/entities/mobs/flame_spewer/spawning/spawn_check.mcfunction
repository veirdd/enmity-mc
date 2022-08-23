execute store result score @s enmity.math_a if entity @e[type=magma_cube,tag=enmity.flame_spewer,distance=..64]
execute store result score @s enmity.math_b if entity @e[type=magma_cube,tag=enmity.flame_spewer,distance=..16]
execute if score @s enmity.math_a matches ..6 if score @s enmity.math_b matches ..3 run function enmity:entities/mobs/flame_spewer/spawning/spawn