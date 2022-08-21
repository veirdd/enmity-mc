scoreboard players add @s enmity.raycast 1
execute if score @s enmity.raycast matches 8.. run scoreboard players set @s enmity.raycast 0
execute unless block ~ ~-1 ~ #enmity:not_solid if block ~ ~ ~ #enmity:not_solid if block ~ ~1 ~ #enmity:not_solid unless entity @p[distance=..4] unless entity @e[type=illusioner,tag=enmity.this,tag=enmity.teleported,limit=1] run function enmity:entities/mobs/illusioner/raycast_successful
execute if score @s enmity.raycast matches 1.. positioned ~ ~-1 ~ run function enmity:entities/mobs/illusioner/raycast