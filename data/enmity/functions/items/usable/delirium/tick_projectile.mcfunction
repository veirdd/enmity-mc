tag @s add enmity.this
playsound entity.wither.ambient neutral @a[distance=0..] ~ ~ ~ 0.5 2 0
execute as @a if score @s enmity.player_id = @e[type=marker,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.this
particle reverse_portal ~ ~ ~ 0 0 0 0 1 force
execute rotated as @p[tag=enmity.this] positioned ^ ^ ^0.75 facing entity @p[tag=enmity.this] eyes positioned ^ ^ ^0.25 run particle reverse_portal ~ ~ ~ 0 0 0 0 1 force
execute rotated as @p[tag=enmity.this] positioned ^ ^ ^2 facing entity @p[tag=enmity.this] eyes positioned ^ ^ ^1 run particle reverse_portal ~ ~ ~ 0 0 0 0 1 force
execute rotated as @p[tag=enmity.this] positioned ^ ^ ^4 facing entity @p[tag=enmity.this] eyes positioned ^ ^ ^2.5 run particle reverse_portal ~ ~ ~ 0 0 0 0 1 force
particle smoke ~ ~ ~ 0.03 0.03 0.03 0.1 1 force
execute rotated as @p[tag=enmity.this] positioned ^ ^ ^0.75 facing entity @p[tag=enmity.this] eyes positioned ^ ^ ^0.25 run particle smoke ~ ~ ~ 0.03 0.03 0.03 0.1 1 force
execute rotated as @p[tag=enmity.this] positioned ^ ^ ^2 facing entity @p[tag=enmity.this] eyes positioned ^ ^ ^1 run particle smoke ~ ~ ~ 0.03 0.03 0.03 0.1 1 force
execute rotated as @p[tag=enmity.this] positioned ^ ^ ^4 facing entity @p[tag=enmity.this] eyes positioned ^ ^ ^2.5 run particle smoke ~ ~ ~ 0.03 0.03 0.03 0.1 1 force
particle dust 0 0 0 1.2 ^ ^ ^0.25 0.05 0.05 0.05 0.05 2 force
execute rotated as @p[tag=enmity.this] positioned ^ ^ ^0.75 facing entity @p[tag=enmity.this] eyes positioned ^ ^ ^0.25 run particle dust 0 0 0 1.2 ^ ^ ^0.25 0.05 0.05 0.05 0.05 2 force
execute rotated as @p[tag=enmity.this] positioned ^ ^ ^2 facing entity @p[tag=enmity.this] eyes positioned ^ ^ ^1 run particle dust 0 0 0 1.2 ^ ^ ^0.25 0.05 0.05 0.05 0.05 2 force
execute rotated as @p[tag=enmity.this] positioned ^ ^ ^4 facing entity @p[tag=enmity.this] eyes positioned ^ ^ ^2.5 run particle dust 0 0 0 1.2 ^ ^ ^0.25 0.05 0.05 0.05 0.05 2 force
execute rotated as @p[tag=enmity.this] positioned ^ ^ ^1 facing entity @p[tag=enmity.this] eyes positioned ^ ^ ^0.7 run summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
execute facing entity @e[type=marker,tag=enmity.direction_anchor] feet run tp @s ^ ^ ^1 facing ^ ^ ^2
execute at @s as @a if score @s enmity.player_id = @e[type=marker,tag=enmity.this,limit=1] enmity.player_id run tag @s add enmity.this
execute at @s rotated as @p[tag=enmity.this] positioned ^ ^ ^1 facing entity @p[tag=enmity.this] eyes positioned ^ ^ ^0.7 run summon marker ~ ~ ~ {Tags:["enmity.direction_anchor"]}
execute at @s facing entity @e[type=marker,tag=enmity.direction_anchor] feet run tp @s ^ ^ ^1 facing ^ ^ ^2
kill @e[type=marker,tag=enmity.direction_anchor]
tag @a[tag=enmity.this] remove enmity.this
execute as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~-1 ~ as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~-1 ~ ~ as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~ as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~-1 ~ ~-1 as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~-1 as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~ ~-1 as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~-1 ~-1 as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute if score @s enmity.age matches 80.. run function enmity:items/usable/delirium/die_projectile
execute if entity @e[tag=enmity.hit] run function enmity:items/usable/delirium/damage_projectile
tag @s remove enmity.this