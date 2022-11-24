tag @s add enmity.this
tp @s ^ ^ ^1 facing ^ ^-0.01 ^1.6
particle fishing ^-0.02 ^ ^ 0 0 0 0 1 force
particle fishing ^-0.02 ^ ^0.2 0 0 0 0 1 force
particle fishing ^-0.02 ^ ^0.4 0 0 0 0 1 force
particle fishing ^-0.02 ^ ^0.6 0 0 0 0 1 force
particle fishing ^-0.02 ^ ^0.8 0 0 0 0 1 force
function enmity:misc/solid_detection/check
execute positioned ^ ^ ^0.5 run function enmity:misc/solid_detection/check
execute if entity @s[tag=enmity.in_solid] run kill @s
execute if predicate enmity:environment/in_water run particle bubble ~ ~ ~ 0 0 0 0.07 3 force
execute if predicate enmity:environment/in_water run particle bubble ^ ^ ^0.5 0 0 0 0.07 3 force
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^0.2 ^ positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^0.4 ^ positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^0.6 ^ positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute positioned ^ ^0.8 ^ positioned ~-0.25 ~-0.25 ~-0.25 as @e[scores={enmity.iframes=0},type=!#enmity:not_living,tag=!enmity.projectile,dx=0] unless score @e[tag=enmity.this,limit=1] enmity.player_id = @s enmity.player_id positioned ~-0.49 ~-0.49 ~-0.49 if entity @s[dx=0] run tag @s add enmity.hit
execute if entity @e[type=!#enmity:not_living,tag=enmity.hit] run function enmity:items/usable/aquatic_scepter/damage_projectile
execute if score @s enmity.age matches 20.. run kill @s
execute if score @s enmity.impact_ct matches 2.. run kill @s
execute if predicate enmity:environment/in_lava run kill @s
tag @s remove enmity.this