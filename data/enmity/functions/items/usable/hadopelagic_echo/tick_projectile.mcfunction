tag @s add enmity.this
tp ^ ^ ^0.3
particle dust 0.2 0.8 1 0.3 ^0.5 ^ ^ 0 0 0 0 1 force
particle dust 0.2 0.8 1 0.3 ^-0.5 ^ ^ 0 0 0 0 1 force
particle dust 0.2 0.8 1 0.3 ^ ^0.5 ^ 0 0 0 0 1 force
particle dust 0.2 0.8 1 0.3 ^ ^-0.5 ^ 0 0 0 0 1 force
particle dust 0.2 0.2 0.2 0.3 ^0.35 ^0.35 ^ 0 0 0 0 1 force
particle dust 0.2 0.2 0.2 0.3 ^0.35 ^-0.35 ^ 0 0 0 0 1 force
particle dust 0.2 0.2 0.2 0.3 ^-0.35 ^0.35 ^ 0 0 0 0 1 force
particle dust 0.2 0.2 0.2 0.3 ^-0.35 ^-0.35 ^ 0 0 0 0 1 force
particle dust 0.2 0.2 0.2 0.3 ^0.175 ^0.45 ^ 0 0 0 0 1 force
particle dust 0.2 0.2 0.2 0.3 ^0.175 ^-0.45 ^ 0 0 0 0 1 force
particle dust 0.2 0.2 0.2 0.3 ^-0.175 ^0.45 ^ 0 0 0 0 1 force
particle dust 0.2 0.2 0.2 0.3 ^-0.175 ^-0.45 ^ 0 0 0 0 1 force
particle dust 0.2 0.2 0.2 0.3 ^0.45 ^0.175 ^ 0 0 0 0 1 force
particle dust 0.2 0.2 0.2 0.3 ^0.45 ^-0.175 ^ 0 0 0 0 1 force
particle dust 0.2 0.2 0.2 0.3 ^-0.45 ^0.175 ^ 0 0 0 0 1 force
particle dust 0.2 0.2 0.2 0.3 ^-0.45 ^-0.175 ^ 0 0 0 0 1 force
execute as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~-1 ~ as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~-1 ~ ~ as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~ as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~-1 ~ ~-1 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~-1 ~-1 ~-1 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~ ~-1 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute positioned ~ ~-1 ~-1 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/hadopelagic_echo/damage_projectile
execute if score @s enmity.age matches 200.. run kill @s
execute if score @s enmity.impact_ct matches 3.. run function enmity:items/usable/hadopelagic_echo/die_projectile
tag @s remove enmity.this
execute store result score @s enmity.rotation run data get entity @s Rotation[1]
execute if score @s enmity.rotation matches ..-1 positioned ~ ~0.41 ~ run function enmity:misc/solid_detection/check
execute if score @s enmity.rotation matches ..-1 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/hadopelagic_echo/y_bounce
tag @s remove enmity.in_solid
execute if score @s[tag=!enmity.bounced] enmity.rotation matches 1.. positioned ~ ~-0.41 ~ run function enmity:misc/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches 1.. if entity @s[tag=enmity.in_solid] run function enmity:items/usable/hadopelagic_echo/y_bounce
tag @s remove enmity.in_solid
execute store result score @s[tag=!enmity.bounced] enmity.rotation run data get entity @s Rotation[0]
execute if score @s[tag=!enmity.bounced] enmity.rotation matches ..-1 positioned ~0.41 ~ ~ run function enmity:misc/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches ..-1 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/hadopelagic_echo/x_bounce
tag @s remove enmity.in_solid
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -1.. positioned ~-0.41 ~ ~ run function enmity:misc/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -1.. if entity @s[tag=enmity.in_solid] run function enmity:items/usable/hadopelagic_echo/x_bounce
tag @s remove enmity.in_solid
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -91..89 positioned ~ ~ ~0.41 run function enmity:misc/solid_detection/check
execute if score @s[tag=!enmity.bounced] enmity.rotation matches -91..89 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/hadopelagic_echo/z_bounce
tag @s remove enmity.in_solid
execute unless score @s[tag=!enmity.bounced] enmity.rotation matches -90..90 positioned ~ ~ ~-0.41 run function enmity:misc/solid_detection/check
execute unless score @s[tag=!enmity.bounced] enmity.rotation matches -90..90 if entity @s[tag=enmity.in_solid] run function enmity:items/usable/hadopelagic_echo/z_bounce
tag @s remove enmity.in_solid
tag @s remove enmity.bounced