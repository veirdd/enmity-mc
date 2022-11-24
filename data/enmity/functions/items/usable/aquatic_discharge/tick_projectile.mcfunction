tag @s add enmity.this
tp @s ^ ^ ^0.6 facing ^ ^-0.02 ^1.2
particle splash ~ ~ ~ 0 0 0 0 3 force
function enmity:misc/solid_detection/check
execute positioned ^ ^ ^0.3 run function enmity:misc/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run kill @s
execute if predicate enmity:environment/in_water run particle bubble ~ ~ ~ 0 0 0 0.07 3 force
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^0.3 ^ positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/aquatic_discharge/die_projectile
execute if score @s enmity.age matches 25.. run kill @s
execute if predicate enmity:environment/in_lava run function enmity:items/usable/aquatic_discharge/die_projectile
tag @s remove enmity.this