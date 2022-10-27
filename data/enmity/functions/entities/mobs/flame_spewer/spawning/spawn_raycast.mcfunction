scoreboard players add @s enmity.raycast 1
execute if block ~ ~ ~ lava[level=0] run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 0 positioned ~ ~1 ~ if predicate enmity:environment/not_solid_3x3x3 unless entity @p[distance=..4] positioned ~ ~-1 ~ run function enmity:cmd/spawn/flame_spewer
execute if score @s enmity.raycast matches 20.. run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 1.. positioned ~ ~-1 ~ run function enmity:entities/mobs/flame_spewer/spawning/spawn_raycast