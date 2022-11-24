tag @s add enmity.this
execute if score @s enmity.age matches ..15 as @e[type=!#enmity:not_living,tag=!enmity.projectile,distance=..8,limit=1] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run scoreboard players add @e[type=marker,tag=enmity.this] enmity.age 3
execute if score @s enmity.age matches 16 run particle firework ~ ~ ~ 0 0 0 0.1 10 force
execute if entity @s[tag=enmity.player_targeting] if score @s enmity.age matches 16.. as @e[type=!#enmity:not_living,tag=!enmity.projectile,distance=..32] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.homing_target
execute if entity @s[tag=!enmity.player_targeting] if score @s enmity.age matches 16.. as @e[type=!#enmity:not_living,type=!player,tag=!enmity.projectile,distance=..32] run tag @s add enmity.homing_target
execute if score @s enmity.age matches 16.. unless entity @e[tag=enmity.homing_target] run kill @s
execute if score @s enmity.age matches ..15 run function enmity:misc/projectiles/random_spread/10dg
execute if score @s enmity.age matches ..15 run tp @s ^ ^ ^0.8
execute if score @s enmity.age matches 16.. run tp @s ^ ^ ^0.8 facing entity @e[tag=enmity.homing_target,limit=1,sort=nearest] eyes
tag @e[tag=enmity.homing_target] remove enmity.homing_target
playsound entity.parrot.imitate.vex neutral @a[distance=0..] ~ ~ ~ 1 2 0
execute if entity @s[tag=enmity.1] run particle dust 0.7 1 1 0.6 ~ ~ ~ 0.06 0.06 0.06 0 4 force
execute if entity @s[tag=enmity.1] run particle dust 0.7 1 1 0.6 ^ ^ ^0.4 0.06 0.06 0.06 0 4 force
execute if entity @s[tag=enmity.2] run particle dust 1 0.7 1 0.6 ~ ~ ~ 0.06 0.06 0.06 0 4 force
execute if entity @s[tag=enmity.2] run particle dust 1 0.7 1 0.6 ^ ^ ^0.4 0.06 0.06 0.06 0 4 force
execute if entity @s[tag=enmity.3] run particle dust 1 1 0.7 0.6 ~ ~ ~ 0.06 0.06 0.06 0 4 force
execute if entity @s[tag=enmity.3] run particle dust 1 1 0.7 0.6 ^ ^ ^0.4 0.06 0.06 0.06 0 4 force
execute if entity @s[tag=enmity.4] run particle dust 1 0.7 0.7 0.6 ~ ~ ~ 0.06 0.06 0.06 0 4 force
execute if entity @s[tag=enmity.4] run particle dust 1 0.7 0.7 0.6 ^ ^ ^0.4 0.06 0.06 0.06 0 4 force
execute if entity @s[tag=enmity.5] run particle dust 0.7 1 0.7 0.6 ~ ~ ~ 0.06 0.06 0.06 0 4 force
execute if entity @s[tag=enmity.5] run particle dust 0.7 1 0.7 0.6 ^ ^ ^0.4 0.06 0.06 0.06 0 4 force
execute if entity @s[tag=enmity.6] run particle dust 0.7 0.7 1 0.6 ~ ~ ~ 0.06 0.06 0.06 0 4 force
execute if entity @s[tag=enmity.6] run particle dust 0.7 0.7 1 0.6 ^ ^ ^0.4 0.06 0.06 0.06 0 4 force
particle ambient_entity_effect ~ ~ ~ 0 0 0 1 1 force
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.267 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.523 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/spectral_rift/damage_projectile
execute if score @s enmity.age matches 120.. run kill @s
tag @s remove enmity.this