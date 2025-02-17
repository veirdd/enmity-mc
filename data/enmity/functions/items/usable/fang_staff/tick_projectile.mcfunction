tag @s add enmity.this
execute positioned ~ ~1.7 ~ run function enmity:misc/solid_detection/check
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.35 run function enmity:misc/solid_detection/check
execute if entity @s[tag=enmity.in_solid] positioned ~ ~1.7 ~ run function enmity:items/usable/fang_staff/die_projectile
execute positioned ~ ~1.7 ~ if entity @s[tag=enmity.player_targeting] positioned ^ ^ ^3 as @e[type=!#enmity:not_living,tag=!enmity.projectile,distance=..5] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.homing_target
execute positioned ~ ~1.7 ~ if entity @s[tag=!enmity.player_targeting] positioned ^ ^ ^3 as @e[type=!#enmity:not_living,type=!player,tag=!enmity.projectile,distance=..5] run tag @s add enmity.homing_target
execute if entity @e[type=!#enmity:not_living,tag=enmity.homing_target] run function enmity:items/usable/fang_staff/home_in_projectile
tp @s ^ ^ ^0.7
particle dust 0 0.5 0 0.5 ~ ~1.7 ~ 0 0 0 0 1 force
execute if score @s enmity.age matches 20.. run kill @s
execute positioned ~ ~1.7 ~ as @e[scores={iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.175 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.350 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ~ ~1.7 ~ positioned ^ ^ ^0.525 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] positioned ~ ~1.7 ~ run function enmity:items/usable/fang_staff/damage_projectile
tag @s remove enmity.this