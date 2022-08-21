scoreboard players add @s enmity.raycast 1
particle end_rod ~ ~ ~ 0 0 0 0 1 force
particle end_rod ^ ^ ^0.25 0 0 0 0 1 force
execute if score @s enmity.raycast matches 96.. run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:entities/mobs/wither/projectiles/ray/raycast