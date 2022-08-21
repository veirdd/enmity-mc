scoreboard players add @s enmity.raycast 1
particle dust 0 0 0 2 ~ ~ ~ 0 0 0 0 1 force
particle dust 0 0 0 2 ^ ^ ^0.1 0 0 0 0 1 force
particle dust 0 0 0 2 ^ ^ ^0.2 0 0 0 0 1 force
particle dust 0 0 0 2 ^ ^ ^0.3 0 0 0 0 1 force
particle dust 0 0 0 2 ^ ^ ^0.4 0 0 0 0 1 force
execute if score @s enmity.raycast matches 96.. run scoreboard players set @s enmity.raycast 0
tp @e[type=marker,tag=enmity.withers_ray,limit=1] ~ ~ ~
execute as @e[type=marker,limit=1,tag=enmity.withers_ray] run function enmity:entities/mobs/wither/projectiles/ray/projectile
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:entities/mobs/wither/projectiles/ray/raycast2