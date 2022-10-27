summon marker ~ ~10 ~ {Tags:["enmity.spawner"]}
summon marker ~ ~10 ~ {Tags:["enmity.spawner"]}
summon marker ~ ~10 ~ {Tags:["enmity.spawner"]}
execute as @e[type=marker,tag=enmity.spawner] at @s run function enmity:utility/projectiles/random_spread/360dg
execute as @e[type=marker,tag=enmity.spawner] at @s positioned ^ ^ ^24 run function enmity:entities/mobs/flame_spewer/spawning/spawn_raycast
execute as @e[type=marker,tag=enmity.spawner] run tp ~ -1000 ~
kill @e[type=marker,tag=enmity.spawner]