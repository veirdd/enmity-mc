execute unless entity @s[tag=enmity.sensed_player] store result score @s enmity.math_a run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 water[level=15] replace sculk_shrieker[shrieking=true]
execute unless entity @s[tag=enmity.sensed_player] run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 sculk_shrieker[shrieking=true] replace water[level=15]
execute unless entity @s[tag=enmity.sensed_player] if score @s enmity.math_a matches 1.. run function enmity:entities/mobs/sculker/sensed_player
execute unless entity @p[gamemode=!spectator,distance=..16] run tag @s remove enmity.sensed_player
execute unless entity @p[gamemode=!spectator,distance=..16] run data merge entity @s {NoAI:1,Peek:0}
execute if entity @e[type=warden,distance=..16] run function enmity:entities/mobs/sculker/despawn_warden