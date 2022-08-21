summon marker ~ ~ ~ {Tags:["enmity.spawner"]}
execute as @e[type=marker,tag=enmity.spawner] at @s run function enmity:utility/projectiles/random_spread/360dg
execute as @e[type=marker,tag=enmity.spawner] at @s positioned ^ ^ ^32 run function enmity:entities/other_entities/items/pocket_moon/spawn_raycast
execute as @e[type=marker,tag=enmity.spawner] run tp ~ -1000 ~
kill @e[type=marker,tag=enmity.spawner]