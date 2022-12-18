execute if entity @p[gamemode=!spectator,distance=..8] if entity @s[tag=!enmity.sensed_player] run function enmity:entities/mobs/sculker/sensed_player
execute unless entity @p[gamemode=!spectator,distance=..8] if entity @s[tag=enmity.sensed_player] run tag @s remove enmity.sensed_player
execute unless entity @p[gamemode=!spectator,distance=..8] run data merge entity @s {NoAI:1,Peek:0}
execute if entity @e[type=warden,distance=..16] run function enmity:entities/mobs/sculker/despawn_warden