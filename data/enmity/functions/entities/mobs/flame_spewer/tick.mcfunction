execute if block ~ ~ ~ lava if predicate enmity:entity/has_target run summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
execute if predicate enmity:entity/has_target facing entity @p[gamemode=!spectator,gamemode=!creative,distance=..32] feet run tp @e[type=marker,tag=enmity.direction_anchor] ^ ^ ^10
kill @e[type=marker,tag=enmity.direction_anchor,distance=..0.1]
execute if entity @e[type=marker,tag=enmity.direction_anchor] store result score @s enmity.rotation run data get entity @e[type=marker,tag=enmity.direction_anchor,limit=1] Rotation[0]
execute if block ~ ~ ~ lava unless predicate enmity:entity/has_target store result entity @s Rotation[0] float 1 run scoreboard players get @s enmity.rotation
execute if block ~ ~ ~ lava if entity @p[distance=..8] if entity @e[type=marker,tag=enmity.direction_anchor] run function enmity:entities/mobs/flame_spewer/movement
execute if block ~ ~ ~ lava run data merge entity @s {NoGravity:1}
execute if block ~ ~0.1 ~ lava run tp @s ~ ~0.05 ~
execute unless block ~ ~ ~ lava run data merge entity @s {NoGravity:0}
execute if entity @s[nbt={HurtTime:9s}] run function enmity:entities/mobs/flame_spewer/on_harm