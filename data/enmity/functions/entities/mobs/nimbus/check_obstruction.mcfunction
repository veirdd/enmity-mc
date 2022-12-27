tag @s remove enmity.has_view
scoreboard players set @s enmity.raycast 0
execute at @s anchored eyes facing entity @p[gamemode=!creative,gamemode=!spectator] eyes run function enmity:entities/mobs/nimbus/raycast