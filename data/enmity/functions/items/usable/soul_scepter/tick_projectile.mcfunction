tag @s add enmity.this
execute if entity @s[tag=!enmity.end_wither_skeleton] run function enmity:utility/solid_detection/check
execute if entity @s[tag=!enmity.end_wither_skeleton] positioned ^ ^ ^0.3 run function enmity:utility/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run function enmity:items/usable/soul_scepter/die_projectile
execute if entity @s[tag=!enmity.wraith,tag=!enmity.end_wither_skeleton] if entity @s[tag=enmity.player_targeting] positioned ^ ^ ^3 positioned ~ ~-1 ~ as @e[type=!#enmity:not_living,tag=!enmity.projectile,sort=nearest,distance=..6] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.homing_target
execute if entity @s[tag=!enmity.wraith,tag=!enmity.end_wither_skeleton] if entity @s[tag=!enmity.player_targeting] positioned ^ ^ ^3 positioned ~ ~-1 ~ as @e[type=!#enmity:not_living,type=!player,tag=!enmity.projectile,sort=nearest,distance=..6] run tag @s add enmity.homing_target
execute if entity @s[tag=enmity.end_wither_skeleton] positioned ^ ^ ^3 positioned ~ ~-1 ~ as @p[distance=..6] run tag @s add enmity.homing_target
execute if entity @s[tag=enmity.wraith] positioned ^ ^ ^3 positioned ~ ~-1 ~ as @p[distance=..4] run tag @s add enmity.homing_target
execute if entity @e[type=!#enmity:not_living,tag=enmity.homing_target] run function enmity:items/usable/soul_scepter/home_in_projectile
tp @s ^ ^ ^0.6
playsound block.chorus_flower.grow neutral @a[distance=0..] ~ ~ ~ 0.5 0.7 0
execute unless entity @s[tag=enmity.end_wither_skeleton] run particle dust 1 1 1 1 ~ ~ ~ 0.025 0.025 0.025 0 3 force
execute unless entity @s[tag=enmity.end_wither_skeleton] run particle dust 1 1 1 1 ^ ^ ^0.3 0.025 0.025 0.025 0 3 force
execute if entity @s[tag=enmity.end_wither_skeleton] run particle dust 0.15 0.15 0.15 1 ~ ~ ~ 0.025 0.025 0.025 0 3 force
execute if entity @s[tag=enmity.end_wither_skeleton] run particle dust 0.15 0.15 0.15 1 ^ ^ ^0.3 0.025 0.025 0.025 0 3 force
execute if entity @s[tag=enmity.end_wither_skeleton] run particle reverse_portal ~ ~ ~ 0.075 0.075 0.075 0.02 2 force
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.27 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^ ^0.53 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/soul_scepter/damage_projectile
execute if score @s enmity.age matches 120.. run kill @s
tag @s remove enmity.this