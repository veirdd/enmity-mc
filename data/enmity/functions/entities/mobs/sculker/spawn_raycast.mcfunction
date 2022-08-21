scoreboard players add @s enmity.raycast 1
execute unless block ~ ~-1 ~ #enmity:not_solid run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 32.. run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 0 if predicate enmity:environment/biome/deep_dark if block ~ ~ ~ air if block ~ ~-1 ~ #enmity:sculker_spawnable unless entity @p[distance=..24] run summon shulker ~ ~-0.5 ~
execute if score @s enmity.raycast matches 1.. positioned ~ ~-1 ~ run function enmity:entities/mobs/sculker/spawn_raycast