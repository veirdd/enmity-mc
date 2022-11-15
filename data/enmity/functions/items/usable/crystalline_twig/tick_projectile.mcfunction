tag @s add enmity.this
execute if entity @s[tag=!enmity.end_wither_skeleton] run function enmity:utility/solid_detection/check
execute if entity @s[tag=!enmity.end_wither_skeleton] positioned ^ ^ ^0.3 run function enmity:utility/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystalline_twig/die_projectile
execute positioned ~ ~-1 ~ as @e[type=#enmity:enemies,tag=!enmity.sentry,tag=!enmity.tamed,tag=!enmity.projectile,distance=..16,limit=1,sort=nearest] run tag @s add enmity.homing_target
execute if entity @e[type=!#enmity:not_living,tag=enmity.homing_target] run function enmity:items/usable/crystalline_twig/home_in_projectile
tp @s ^ ^ ^0.5
particle dust 0.75 0.625 0.9 0.3 ~ ~ ~ 0.025 0.025 0.025 0 3 force
particle dust 0.75 0.625 0.9 0.3 ^ ^ ^0.25 0.025 0.025 0.025 0 3 force
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.167 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.333 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/crystalline_twig/damage_projectile
execute if score @s enmity.age matches 60.. run kill @s
tag @s remove enmity.this