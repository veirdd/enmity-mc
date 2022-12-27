execute if score %difficulty enmity.value matches 1 if entity @p[gamemode=!creative,gamemode=!spectator,distance=..32] run function enmity:entities/mobs/visage/check_obstruction
execute if score %difficulty enmity.value matches 2 if entity @p[gamemode=!creative,gamemode=!spectator,distance=..64] run function enmity:entities/mobs/visage/check_obstruction
execute if score @s enmity.cooldown matches 1.. run scoreboard players remove @s enmity.cooldown 1
execute if entity @s[tag=enmity.has_view] if score @s enmity.cooldown matches 0 if predicate enmity:random/random_0.25 if entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] run function enmity:entities/mobs/visage/attack
execute if score @s enmity.idle_cd matches ..0 run function enmity:entities/mobs/visage/ambience
scoreboard players remove @s enmity.idle_cd 10
execute unless entity @s[tag=enmity.has_view] if predicate enmity:random/random_0.1 run function enmity:entities/mobs/visage/movement
tag @s add enmity.obstructed
execute if block ~ ~1 ~ #enmity:not_solid if block ~0.5 ~ ~0.5 #enmity:not_solid if block ~0.5 ~ ~ #enmity:not_solid if block ~0.5 ~ ~-0.5 #enmity:not_solid if block ~ ~ ~0.5 #enmity:not_solid if block ~ ~ ~-0.5 #enmity:not_solid if block ~-0.5 ~ ~0.5 #enmity:not_solid if block ~-0.5 ~ ~ #enmity:not_solid if block ~-0.5 ~ ~-0.5 #enmity:not_solid run tag @s remove enmity.obstructed
execute if entity @s[tag=enmity.obstructed] run function enmity:entities/mobs/visage/movement