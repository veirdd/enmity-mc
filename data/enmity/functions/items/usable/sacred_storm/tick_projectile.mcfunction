tag @s add enmity.this
tp @s ~ ~0.2 ~
particle dust 0 0 0 0.8 ~ ~ ~ 0 0 0 0 1 force
particle dust 0.5 0 0.8 0.6 ~ ~ ~ 0 0 0 0 1 force
particle dust 0.2 0.2 0.8 0.6 ~ ~ ~ 0 0 0 0 1 force
execute if score @s enmity.age matches 45.. run function enmity:items/usable/sacred_storm/die_projectile
tag @s remove enmity.this