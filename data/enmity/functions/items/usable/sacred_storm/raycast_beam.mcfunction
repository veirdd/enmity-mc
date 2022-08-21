scoreboard players add @s enmity.raycast 1
particle dust 0.2 0.2 0.8 0.6 ~ ~ ~ 0 0 0 0 1 force
particle dust 0.5 0 0.8 0.6 ^ ^ ^0.125 0 0 0 0 1 force
particle dust 0.2 0.2 0.8 0.6 ^ ^ ^0.25 0 0 0 0 1 force
particle dust 0.5 0 0.8 0.6 ^ ^ ^0.375 0 0 0 0 1 force
execute if score @s enmity.raycast matches 128.. run scoreboard players set @s enmity.raycast -1
tp @e[type=marker,tag=enmity.sacred_storm_beam,limit=1] ~ ~ ~
tag @s add enmity.this2
execute as @e[type=marker,limit=1,tag=enmity.sacred_storm_beam] run function enmity:items/usable/sacred_storm/beam
tag @s remove enmity.this2
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:items/usable/sacred_storm/raycast_beam