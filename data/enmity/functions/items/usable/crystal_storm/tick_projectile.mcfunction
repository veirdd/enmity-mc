tag @s add enmity.this
tp @s ^ ^ ^0.2
particle dust 0.75 0.625 0.9 0.3 ~ ~ ~ 0.02 0.02 0.02 0 4 force
particle dust 0.75 0.625 0.9 0.3 ^ ^ ^0.2 0.02 0.02 0.02 0 4 force
particle dust 0.75 0.625 0.9 0.3 ^ ^ ^0.4 0.02 0.02 0.02 0 4 force
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/crystal_storm/die_projectile
execute if score @s enmity.age matches 35.. run kill @s
execute store result score @s enmity.rotation run data get entity @s Rotation[1]
execute if score @s enmity.rotation matches ..-1 positioned ~ ~0.41 ~ run function enmity:misc/solid_detection/check
execute if score @s enmity.rotation matches ..-1 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/y_bounce
tag @s remove enmity.in_solid
execute if score @s[tag=!enmity.bounced] enmity.rotation matches 1.. positioned ~ ~-0.41 ~ run function enmity:misc/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches 1.. if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/y_bounce
tag @s remove enmity.in_solid
execute store result score @s[tag=!enmity.bounced] enmity.rotation run data get entity @s Rotation[0]
execute if score @s[tag=!enmity.bounced] enmity.rotation matches ..-1 positioned ~0.41 ~ ~ run function enmity:misc/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches ..-1 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/x_bounce
tag @s remove enmity.in_solid
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -1.. positioned ~-0.41 ~ ~ run function enmity:misc/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -1.. if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/x_bounce
tag @s remove enmity.in_solid
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -91..89 positioned ~ ~ ~0.41 run function enmity:misc/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -91..89 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/z_bounce
tag @s remove enmity.in_solid
execute unless score @s[tag=!enmity.bounced] enmity.rotation matches -90..90 positioned ~ ~ ~-0.41 run function enmity:misc/solid_detection/check
execute unless score @s[tag=!enmity.bounced] enmity.rotation matches -90..90 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/crystal_storm/z_bounce
tag @s remove enmity.in_solid
tag @s remove enmity.bounced
execute at @s run function enmity:items/usable/crystal_storm/tick_projectile_2
execute at @s run function enmity:items/usable/crystal_storm/tick_projectile_2
execute if score @s enmity.impact_ct matches 3.. run function enmity:items/usable/crystal_storm/die_projectile
tag @s remove enmity.this