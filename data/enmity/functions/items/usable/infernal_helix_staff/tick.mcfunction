tp @s ~ ~ ~ ~10 ~
particle small_flame ^0.3 ^0.3 ^0.3 0 -1 0 0.05 0 force
particle small_flame ^-0.3 ^0.3 ^0.3 0 1 0 0.05 0 force
particle small_flame ^0.3 ^0.3 ^-0.3 0 -1 0 0.05 0 force
particle small_flame ^-0.3 ^0.3 ^-0.3 0 1 0 0.05 0 force
particle small_flame ^0.3 ^-0.3 ^0.3 0 -1 0 0.05 0 force
particle small_flame ^-0.3 ^-0.3 ^0.3 0 1 0 0.05 0 force
particle small_flame ^0.3 ^-0.3 ^-0.3 0 -1 0 0.05 0 force
particle small_flame ^-0.3 ^-0.3 ^-0.3 0 1 0 0.05 0 force
execute if block ~ ~-1 ~ #enmity:liquid_water run function enmity:items/usable/infernal_helix_staff/die
execute if block ~ ~ ~ #enmity:liquid_water run function enmity:items/usable/infernal_helix_staff/die
execute if block ~ ~1 ~ #enmity:liquid_water run function enmity:items/usable/infernal_helix_staff/die