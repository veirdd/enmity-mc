scoreboard players remove @s enmity.raycast 1
particle end_rod ~ ~ ~ 0 0 0 0 1 force
particle end_rod ^ ^ ^0.25 0 0 0 0 1 force
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:entities/mobs/ender_dragon/projectiles/ray/raycast_1
execute if score @s enmity.raycast matches 0 run scoreboard players operation @s enmity.raycast = @s enmity.math_a