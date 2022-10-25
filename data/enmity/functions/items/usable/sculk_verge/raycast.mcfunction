scoreboard players add @s enmity.raycast 1
execute if score @s enmity.raycast matches 32.. run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #enmity:not_solid run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 0 run function enmity:items/usable/sculk_verge/ray_impact
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #enmity:not_solid run function enmity:items/usable/sculk_verge/raycast