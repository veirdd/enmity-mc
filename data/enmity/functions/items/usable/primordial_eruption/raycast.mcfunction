scoreboard players add @s enmity.raycast 1
execute if score @s enmity.raycast matches ..7 run particle falling_dust oak_planks ~ ~ ~ 0.3 0.3 0.3 0 8 force
execute if score @s enmity.raycast matches ..7 run particle falling_dust sand ~ ~ ~ 0.3 0.3 0.3 0 3 force
execute if score @s enmity.raycast matches 8..15 run particle falling_dust oak_planks ~ ~ ~ 0.5 0.5 0.5 0 12 force
execute if score @s enmity.raycast matches 8..15 run particle falling_dust sand ~ ~ ~ 0.5 0.5 0.5 0 4 force
execute if score @s enmity.raycast matches 16.. run particle falling_dust oak_planks ~ ~ ~ 0.75 0.75 0.75 0 15 force
execute if score @s enmity.raycast matches 16.. run particle falling_dust sand ~ ~ ~ 0.75 0.75 0.75 0 5 force
execute if score @s enmity.raycast matches 24.. run scoreboard players set @s enmity.raycast 0
execute if predicate enmity:environment/in_liquid run scoreboard players set @s enmity.raycast 0
tp @e[type=marker,tag=enmity.primordial_eruption,limit=1] ~ ~ ~ facing ^ ^ ^1
execute as @e[type=marker,limit=1,tag=enmity.primordial_eruption] run function enmity:items/usable/primordial_eruption/projectile
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:items/usable/primordial_eruption/raycast