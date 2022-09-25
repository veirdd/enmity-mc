execute store result score @s enmity.math_a if entity @e[type=shulker,nbt=!{PersistenceRequired:1b},distance=..64]
execute store result score @s enmity.math_b if entity @e[type=shulker,nbt=!{PersistenceRequired:1b},distance=..32]
execute if score @s enmity.math_a matches ..15 if score @s enmity.math_b matches ..5 run function enmity:entities/mobs/sculker/spawn