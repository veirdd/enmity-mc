summon marker ~ ~24 ~ {Tags:["enmity.spawner"]}
execute as @e[type=marker,tag=enmity.spawner] at @s run function enmity:misc/projectiles/random_spread/360dg
execute as @e[type=marker,tag=enmity.spawner] at @s positioned ^ ^ ^40 unless entity @p[distance=..40] if predicate enmity:environment/air_3x3x3 if predicate enmity:environment/light_level/8-15 run function enmity:misc/check_sky_access/request
execute as @e[type=marker,tag=enmity.spawner,tag=enmity.sky_access] at @s positioned ^ ^ ^40 run function enmity:cmd/spawn/harpy
kill @e[type=marker,tag=enmity.spawner]