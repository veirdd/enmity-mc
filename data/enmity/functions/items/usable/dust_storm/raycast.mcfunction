scoreboard players add @s enmity.raycast 1
particle falling_dust oak_planks ~ ~ ~ 0.4 0.4 0.4 0 8 force
particle falling_dust sand ~ ~ ~ 0.4 0.4 0.4 0 3 force
tp @e[type=marker,tag=enmity.dust_storm,limit=1] ~ ~ ~ facing ^ ^ ^1
execute as @e[type=marker,limit=1,tag=enmity.dust_storm] run function enmity:items/usable/dust_storm/projectile
execute if entity @e[type=marker,tag=enmity.dust_storm,limit=1,tag=enmity.in_solid] run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 10.. run scoreboard players set @s enmity.raycast 0
execute if predicate enmity:environment/in_liquid run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 1.. positioned ^ ^ ^0.5 run function enmity:items/usable/dust_storm/raycast