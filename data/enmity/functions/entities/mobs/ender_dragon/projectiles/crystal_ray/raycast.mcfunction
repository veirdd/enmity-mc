scoreboard players add @s enmity.raycast 1
particle reverse_portal ~ ~ ~ 0 0 0 0 1 force
particle reverse_portal ^ ^ ^0.1 0 0 0 0 1 force
particle reverse_portal ^ ^ ^0.2 0 0 0 0 1 force
particle reverse_portal ^ ^ ^0.3 0 0 0 0 1 force
particle reverse_portal ^ ^ ^0.4 0 0 0 0 1 force
execute if score @s enmity.raycast matches 128.. run scoreboard players set @s enmity.raycast -1
execute if entity @e[type=marker,limit=1,tag=enmity.dragon_crystal_ray,tag=enmity.die] run scoreboard players set @s enmity.raycast 0
tp @e[type=marker,tag=enmity.dragon_crystal_ray,limit=1] ~ ~ ~
execute as @e[type=marker,limit=1,tag=enmity.dragon_crystal_ray] run function enmity:entities/mobs/ender_dragon/projectiles/crystal_ray/projectile
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:entities/mobs/ender_dragon/projectiles/crystal_ray/raycast