data modify entity @s CustomNameVisible set value 0
data modify entity @s CustomNameVisible set value 1
tp @s ~ ~ ~ ~10 ~
particle small_flame ^0.5 ^0.5 ^0.5 0 -1 0 0.05 0 force
particle small_flame ^-0.5 ^0.5 ^0.5 0 1 0 0.05 0 force
particle small_flame ^0.5 ^0.5 ^-0.5 0 -1 0 0.05 0 force
particle small_flame ^-0.5 ^0.5 ^-0.5 0 1 0 0.05 0 force
particle small_flame ^0.5 ^-0.5 ^0.5 0 -1 0 0.05 0 force
particle small_flame ^-0.5 ^-0.5 ^0.5 0 1 0 0.05 0 force
particle small_flame ^0.5 ^-0.5 ^-0.5 0 -1 0 0.05 0 force
particle small_flame ^-0.5 ^-0.5 ^-0.5 0 1 0 0.05 0 force
execute if block ~ ~-1 ~ #enmity:liquid_water run function enmity:items/usable/infernal_helix_staff/die
execute if block ~ ~ ~ #enmity:liquid_water run function enmity:items/usable/infernal_helix_staff/die
execute if block ~ ~1 ~ #enmity:liquid_water run function enmity:items/usable/infernal_helix_staff/die