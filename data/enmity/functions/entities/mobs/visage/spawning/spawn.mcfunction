summon marker ~ ~ ~ {Tags:["enmity.spawner"]}
summon marker ~ ~ ~ {Tags:["enmity.spawner"]}
summon marker ~ ~ ~ {Tags:["enmity.spawner"]}
execute as @e[type=marker,tag=enmity.spawner] at @s run function enmity:misc/projectiles/random_spread/360dg
execute as @e[type=marker,tag=enmity.spawner] at @s positioned ^ ^ ^40 if predicate enmity:environment/biome/crimson_forest if predicate enmity:environment/air_3x3x3 run function enmity:cmd/spawn/crimson_visage
execute as @e[type=marker,tag=enmity.spawner] at @s positioned ^ ^ ^40 if predicate enmity:environment/biome/warped_forest if predicate enmity:environment/air_3x3x3 run function enmity:cmd/spawn/warped_visage
execute as @e[type=marker,tag=enmity.spawner] run tp ~ -1000 ~
kill @e[type=marker,tag=enmity.spawner]