tag @s add enmity.this
summon marker ~ ~ ~ {Tags:["enmity.teleport"]}
summon marker ~ ~ ~ {Tags:["enmity.teleport"]}
summon marker ~ ~ ~ {Tags:["enmity.teleport"]}
execute as @e[type=marker,tag=enmity.teleport] run function enmity:utility/projectiles/random_spread/360dg
execute as @e[type=marker,tag=enmity.teleport] at @s positioned ^ ^ ^8 positioned ~ ~4 ~ run function enmity:entities/mobs/illusioner/raycast
kill @e[type=marker,tag=enmity.teleport]
tag @s remove enmity.this