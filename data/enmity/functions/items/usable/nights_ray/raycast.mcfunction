scoreboard players add @s enmity.raycast 1
particle reverse_portal ~ ~ ~ 0 0 0 0 1 force
particle reverse_portal ^ ^ ^0.1 0 0 0 0 1 force
particle reverse_portal ^ ^ ^0.2 0 0 0 0 1 force
particle reverse_portal ^ ^ ^0.3 0 0 0 0 1 force
particle reverse_portal ^ ^ ^0.4 0 0 0 0 1 force
tp @e[type=marker,tag=enmity.nights_ray,limit=1] ~ ~ ~ facing ^ ^ ^1
execute as @e[type=marker,limit=1,tag=enmity.nights_ray] run function enmity:items/usable/nights_ray/projectile
execute if score @s enmity.raycast matches 128.. run scoreboard players set @s enmity.raycast -1
execute if entity @e[type=marker,tag=enmity.nights_ray,limit=1,tag=enmity.in_solid] run scoreboard players set @s enmity.raycast 0
execute if score @e[type=marker,limit=1,tag=enmity.nights_ray] enmity.impact_ct matches 4.. run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 0 run particle witch ~ ~ ~ 0.25 0.25 0.25 0.1 20 force
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:items/usable/nights_ray/raycast