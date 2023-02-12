tag @s add enmity.this
particle smoke ~ ~1.7 ~ 0 0 0 0 1
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ~ ~-1 ~ as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ~-1 ~ ~ as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ~-1 ~-1 ~ as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ~-1 ~ ~-1 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ~-1 ~-1 ~-1 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ~ ~ ~-1 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ~ ~-1 ~-1 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] as @e[tag=enmity.this,limit=1] at @s positioned ~ ~1.7 ~ run function enmity:items/usable/withered_scepter/die_projectile
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.4 positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] as @e[tag=enmity.this,limit=1] at @s positioned ~ ~1.7 ~ run function enmity:items/usable/withered_scepter/die_projectile
execute positioned ~ ~1.7 ~ run function enmity:misc/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^0.3 ^0.3 ^ run function enmity:misc/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^-0.3 ^0.3 ^ run function enmity:misc/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^0.3 ^-0.3 ^ run function enmity:misc/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^-0.3 ^-0.3 ^ run function enmity:misc/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.267 positioned ^0.3 ^0.3 ^ run function enmity:misc/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.267 positioned ^-0.3 ^0.3 ^ run function enmity:misc/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.267 positioned ^0.3 ^-0.3 ^ run function enmity:misc/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.267 positioned ^-0.3 ^-0.3 ^ run function enmity:misc/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^ ^ ^-0.267 positioned ^0.3 ^0.3 ^ run function enmity:misc/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^ ^ ^-0.267 positioned ^-0.3 ^0.3 ^ run function enmity:misc/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^ ^ ^-0.267 positioned ^0.3 ^-0.3 ^ run function enmity:misc/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^ ^ ^-0.267 positioned ^-0.3 ^-0.3 ^ run function enmity:misc/solid_detection/check
execute if entity @s[tag=enmity.in_solid] positioned ~ ~1.7 ~ run function enmity:items/usable/withered_scepter/die_projectile
execute if score @s enmity.age matches 120.. positioned ~ ~1.7 ~ run function enmity:items/usable/withered_scepter/die_projectile
tp @s ^ ^ ^0.8
tag @e[type=!#enmity:not_living,tag=enmity.hit] remove enmity.hit
tag @s remove enmity.this