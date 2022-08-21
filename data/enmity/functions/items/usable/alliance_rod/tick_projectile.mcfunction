tag @s add enmity.this
function enmity:utility/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/alliance_rod/die_projectile
execute if entity @s[tag=!enmity.allay,tag=enmity.player_targeting] positioned ^ ^ ^3 positioned ~ ~-1 ~ as @e[type=!#enmity:not_living,tag=!enmity.projectile,limit=1,sort=nearest,distance=..16] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.homing_target
execute if entity @s[tag=!enmity.allay,tag=!enmity.player_targeting] positioned ^ ^ ^3 positioned ~ ~-1 ~ as @e[type=!#enmity:not_living,type=!player,tag=!enmity.projectile,limit=1,sort=nearest,distance=..16] run tag @s add enmity.homing_target
execute if entity @s[tag=enmity.allay] positioned ^ ^ ^3 positioned ~ ~-1 ~ as @e[type=#enmity:alliance_susceptible,tag=!enmity.projectile,limit=1,sort=nearest,distance=..16] run tag @s add enmity.homing_target
execute if entity @e[type=!#enmity:not_living,tag=enmity.homing_target] run function enmity:items/usable/alliance_rod/home_in_projectile
tp @s ^ ^ ^0.15
particle glow ~ ~ ~ 0 0 0 0 2 force
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.15 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/alliance_rod/damage_projectile
execute if score @s enmity.age matches 120.. run kill @s
tag @s remove enmity.this