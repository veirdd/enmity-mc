summon marker ~ ~20 ~ {Tags:["enmity.spawner"]}
execute as @e[type=marker,tag=enmity.spawner] at @s run function enmity:utility/projectiles/random_spread/360dg
execute as @e[type=marker,tag=enmity.spawner] at @s positioned ^ ^ ^24 unless entity @p[distance=..24] if predicate enmity:environment/air_3x3x3 if predicate enmity:environment/light_level/8-15 run function enmity:cmd/spawn/harpy
kill @e[type=marker,tag=enmity.spawner]