tp @s ~ ~-2 ~
execute if score @s enmity.age matches 40.. run kill @s
execute if block ~ ~ ~ lava[level=0] if block ~ ~1 ~ #enmity:not_solid run function enmity:entities/other_entities/nether_geyser/erupt