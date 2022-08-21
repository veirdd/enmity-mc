scoreboard players set @s enmity.raycast 0
execute at @s anchored eyes facing entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] eyes run function enmity:entities/mobs/magma_cube/raycast
execute if entity @s[tag=enmity.has_view] run function enmity:entities/mobs/magma_cube/attack