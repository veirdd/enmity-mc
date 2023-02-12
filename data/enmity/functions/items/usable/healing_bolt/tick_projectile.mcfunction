tag @s add enmity.this
function enmity:misc/solid_detection/check
execute positioned ^ ^ ^0.3 run function enmity:misc/solid_detection/check
execute positioned ^ ^ ^0.6 run function enmity:misc/solid_detection/check
execute positioned ^ ^ ^0.9 run function enmity:misc/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/healing_bolt/die_projectile
execute positioned ^ ^ ^4 as @a[gamemode=!spectator,distance=..8] unless score @e[type=marker,tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.homing_target
execute if entity @a[tag=enmity.homing_target] run function enmity:items/usable/healing_bolt/home_in_projectile
execute if score @s enmity.age matches ..3 run tp @s ^ ^ ^1.2
execute if score @s enmity.age matches 4..6 run tp @s ^ ^ ^1
execute if score @s enmity.age matches 7..9 run tp @s ^ ^ ^0.8
execute if score @s enmity.age matches 10..12 run tp @s ^ ^ ^0.6
execute if score @s enmity.age matches 13..15 run tp @s ^ ^ ^0.4
execute if score @s enmity.age matches 16..17 run tp @s ^ ^ ^0.2
execute if score @s enmity.age matches 18.. run tp @s ^ ^ ^0.1
particle dust 0.84 0.33 0.88 1 ~ ~ ~ 0.025 0.025 0.025 0 3 force
particle dust 0.84 0.33 0.88 1 ^ ^ ^0.6 0.025 0.025 0.025 0 3 force
particle entity_effect ~ ~ ~ 0.84 0.33 0.88 1 0 force
particle entity_effect ^ ^ ^0.6 0.84 0.33 0.88 1 0 force
execute if score @s enmity.age matches 3.. as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if score @s enmity.age matches 3.. positioned ^ ^ ^0.24 as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if score @s enmity.age matches 3.. positioned ^ ^ ^0.48 as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if score @s enmity.age matches 3.. positioned ^ ^ ^0.72 as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if score @s enmity.age matches 3.. positioned ^ ^ ^0.96 as @e[type=!#enmity:not_living,tag=!enmity.projectile,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/healing_bolt/damage_projectile
execute if score @s enmity.age matches 20.. run function enmity:items/usable/healing_bolt/die_projectile
tag @s remove enmity.this