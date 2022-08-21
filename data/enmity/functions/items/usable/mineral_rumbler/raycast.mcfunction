scoreboard players add @s enmity.raycast 1
execute if score @s enmity.raycast matches ..32 positioned ^ ^ ^0.5 if block ~ ~ ~ #enmity:not_solid run function enmity:items/usable/mineral_rumbler/raycast
execute unless block ^ ^ ^0.5 #enmity:not_solid run function enmity:items/usable/mineral_rumbler/ray_impact
execute if score @s enmity.raycast matches 32.. run scoreboard players set @s enmity.raycast 0