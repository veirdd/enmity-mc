scoreboard players add @s enmity.raycast 1
execute unless block ~ ~-1 ~ #enmity:not_solid run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 72.. run scoreboard players set @s enmity.raycast 0
execute if score @s enmity.raycast matches 0 unless block ~ ~-1 ~ #enmity:not_solid unless entity @p[distance=..24] run function enmity:utility/check_sky_access/request
execute if entity @s[tag=enmity.sky_access] positioned ~ ~6 ~ run function enmity:cmd/spawn/nimbus
execute if score @s enmity.raycast matches 1.. positioned ~ ~-1 ~ run function enmity:entities/mobs/nimbus/spawning/raycast