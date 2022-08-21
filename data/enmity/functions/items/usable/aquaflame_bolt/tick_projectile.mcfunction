tag @s add enmity.this
execute unless block ~ ~ ~ #enmity:not_solid run function enmity:items/usable/aquaflame_bolt/die_projectile
execute if entity @s[tag=enmity.player_targeting] positioned ^ ^ ^3 positioned ~ ~-1 ~ as @e[type=!#enmity:not_living,tag=!enmity.projectile,limit=1,sort=nearest,distance=..3,scores={enmity.iframes=0}] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.homing_target
execute if entity @s[tag=!enmity.player_targeting] positioned ^ ^ ^3 positioned ~ ~-1 ~ as @e[type=!#enmity:not_living,type=!player,tag=!enmity.projectile,limit=1,sort=nearest,distance=..3,scores={enmity.iframes=0}] run tag @s add enmity.homing_target
execute if entity @e[type=!#enmity:not_living,tag=enmity.homing_target] run function enmity:items/usable/aquaflame_bolt/home_in_projectile
tp @s ^ ^ ^0.3
particle dust 0 0.3 1 1.5 ~ ~ ~ 0.01 0.01 0.01 0 2 force
particle dust 1 0.45 0 1.5 ~ ~ ~ 0.01 0.01 0.01 0 1 force
particle flame ~ ~ ~ 0.075 0.075 0.075 0 1 force
particle dolphin ~ ~ ~ 0.07 0.07 0.07 0 4 force
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/aquaflame_bolt/damage_projectile
execute if score @s enmity.age matches 200.. run kill @s
execute if score @s enmity.impact_ct matches 7.. run function enmity:items/usable/aquaflame_bolt/die_projectile
tag @s remove enmity.this
execute store result score @s enmity.rotation run data get entity @s Rotation[1]
execute if score @s enmity.rotation matches ..-1 positioned ~ ~0.41 ~ run function enmity:utility/solid_detection/check
execute if score @s enmity.rotation matches ..-1 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/water_bolt/y_bounce
tag @s remove enmity.in_solid
execute if score @s[tag=!enmity.bounced] enmity.rotation matches 1.. positioned ~ ~-0.41 ~ run function enmity:utility/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches 1.. if entity @s[tag=enmity.in_solid] run function enmity:items/usable/water_bolt/y_bounce
tag @s remove enmity.in_solid
execute store result score @s[tag=!enmity.bounced] enmity.rotation run data get entity @s Rotation[0]
execute if score @s[tag=!enmity.bounced] enmity.rotation matches ..-1 positioned ~0.41 ~ ~ run function enmity:utility/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches ..-1 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/water_bolt/x_bounce
tag @s remove enmity.in_solid
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -1.. positioned ~-0.41 ~ ~ run function enmity:utility/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -1.. if entity @s[tag=enmity.in_solid] run function enmity:items/usable/water_bolt/x_bounce
tag @s remove enmity.in_solid
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -91..89 positioned ~ ~ ~0.41 run function enmity:utility/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -91..89 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/water_bolt/z_bounce
tag @s remove enmity.in_solid
execute unless score @s[tag=!enmity.bounced] enmity.rotation matches -90..90 positioned ~ ~ ~-0.41 run function enmity:utility/solid_detection/check
execute unless score @s[tag=!enmity.bounced] enmity.rotation matches -90..90 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/water_bolt/z_bounce
tag @s remove enmity.in_solid
tag @s remove enmity.bounced