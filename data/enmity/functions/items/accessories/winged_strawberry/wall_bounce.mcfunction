scoreboard players set @s enmity.flight 0
execute as @e[type=area_effect_cloud,tag=enmity.this] store result score @s enmity.rotation run data get entity @s Rotation[0]
execute as @e[type=area_effect_cloud,tag=enmity.this] run scoreboard players operation @s enmity.rotation += %const_180 enmity.value
execute as @e[type=area_effect_cloud,tag=enmity.this] run scoreboard players operation @s enmity.rotation %= %const_360 enmity.value
execute as @e[type=area_effect_cloud,tag=enmity.this] store result entity @s Rotation[0] float 1 run scoreboard players get @s enmity.rotation
execute rotated as @e[type=area_effect_cloud,tag=enmity.this] run tp @s ~ ~ ~ facing ^ ^ ^1