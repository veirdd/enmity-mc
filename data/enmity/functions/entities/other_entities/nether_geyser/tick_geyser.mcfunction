tag @s add enmity.this
tp @s ~ ~0.5 ~
playsound block.redstone_torch.burnout ambient @a[distance=0..] ~ ~ ~ 0.6 0 0
particle lava ~ ~1 ~ 0.15 0.15 0.15 0 5 force
particle falling_lava ~ ~1 ~ 0.6 0.6 0.6 0 20 force
particle campfire_cosy_smoke ~ ~1 ~ 0.15 0.15 0.15 0.01 3 force
execute if score %difficulty enmity.value matches 1 if score @s enmity.age matches 10.. run kill @s
execute if score @s enmity.age matches 20.. run kill @s
execute unless block ~ ~1 ~ air unless block ~ ~1 ~ lava run kill @s
execute positioned ~ ~-1 ~ as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.target_dummy,tag=!enmity.projectile,distance=..2] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:entities/other_entities/nether_geyser/damage
tag @s remove enmity.this